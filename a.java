@RequestMapping(value = "editSaveAnnexure.do", method = RequestMethod.POST)
	public String submitEditViewAnnexure(

			ModelMap model, MultipartHttpServletRequest request, HttpServletRequest req, HttpSession session,
			// @RequestParam Integer serviceId,
			@ModelAttribute("applicationFormModel") ApplicationFormModel applicationFormModel, BindingResult result) {
		log.debug("GET REQUEST FOR EditviewAnnexure.do");
		try {
			// int check=Integer.parseInt(req.getParameter("check"));

			/*
			 * String docno[] = null; String upReN[] = null; String ducumentNam[] = null;
			 */
			String lang = (String) session.getAttribute("localLang");
			String filledRowCount = req.getParameter("rowCount") != null ? req.getParameter("rowCount").toString() : "";
			String emptyRowIndex = req.getParameter("emptyRowIndex") != null
					? req.getParameter("emptyRowIndex").toString()
					: "";
			int applId = Integer.parseInt(req.getParameter("applId"));
			int serviceId = Integer.parseInt(req.getParameter("serviceId"));
			// String flag[] = req.getParameterValues("flag");
			// String checkBoxValue[] = req.getParameterValues("check");
			/* Start 17122015 for Blocking of Editing Application for Sendback Case */
			SpeServiceApplicationDetails applDetails = speServiceApplicationDetailsService
					.findSingleRecord("spdiApplicationId", applId);
			String ApplStatus = applDetails.getSpdvStatus();

			String isProduction = speServiceChargeDetailsService.isProduction();

			Integer LOCK_PACE_APPL_ID;
			Integer LOCK_PACE_APPL_ID_LIVE;

			Integer LOCK_PACE_APPL_ID_NOW;

			if (isProduction.equalsIgnoreCase("YES")) {
				// for Production
				LOCK_PACE_APPL_ID = 2592091;
				LOCK_PACE_APPL_ID_LIVE = 9599481;
				LOCK_PACE_APPL_ID_NOW = 19562015;
			} else {
				// for Staging
				LOCK_PACE_APPL_ID = 284844;
				LOCK_PACE_APPL_ID_LIVE = 1887682;
				LOCK_PACE_APPL_ID_NOW = 1892465;
			}

			if (applId < LOCK_PACE_APPL_ID && (ApplStatus.equalsIgnoreCase("D") || ApplStatus.equalsIgnoreCase("S"))) {
				speServiceApplicationAnnexureService.insertAnnexToCurrent(applId);
				/*
				 * //use it when need to processure
				 * //speServiceApplicationDetailsService.insertcurrent(applId, isProduction) ;
				 */
			} else if ((applId > LOCK_PACE_APPL_ID && applId < LOCK_PACE_APPL_ID_LIVE)
					&& (ApplStatus.equalsIgnoreCase("D") || ApplStatus.equalsIgnoreCase("S"))) {
				speServiceApplicationAnnexureService.insertAnnexToLive(applId);
			}

			else if ((applId > LOCK_PACE_APPL_ID_LIVE && applId < LOCK_PACE_APPL_ID_NOW)
					&& (ApplStatus.equalsIgnoreCase("D") || ApplStatus.equalsIgnoreCase("S"))) {
				speServiceApplicationAnnexureService.insertAnnexToNow(applId);
			}

			/* End 17122015 for Blocking of Editing Application for Sendback Case */

			speServiceApplicationDetailsService.deleteOldAnnx(applId);
			String message = "";
			ArrayList labelValue = new ArrayList();
			ArrayList withoutFieldSetValue = new ArrayList();
			ArrayList withFieldSetValue = new ArrayList();
			ArrayList fieldSetLabelValue = new ArrayList();
			ArrayList fieldSetLabelValueSize = new ArrayList();
			ArrayList fieldSetRowSize = new ArrayList();

			String applicationField = "id.spdiApplicationId";
			Object applicationValue = applId;
			// --------------rajesh
			int tempservid = serviceId;
			Integer sId = speServiceLocnTypeMapperService.findParentServiceId(tempservid);
			if (sId != 0) {
				tempservid = sId;
			}

			String propertyName4 = "id.spdiServiceId";
			String propertyName5 = "spdiWfField";
			Integer propertyValue5 = 0;
			List<SpeServiceApplTemplMast> templateId = speServiceApplTemplMastService.findByProperty(propertyName4,
					tempservid, propertyName5, propertyValue5);
			int tempID = templateId.get(0).getSpdiApplTemplateId();

			ApplicationCertDetailsModel a = new ApplicationCertDetailsModel();
			a.setTempid(tempID);
			a.setSpdiApplicationId(applId);

			// List<SpeServiceApplCertDetails> applCertDetailsList =
			// speServiceApplCertDetailsService.findByProperty(applicationField,
			// applicationValue);
			List<ApplicationCertDetailsModel> applCertDetailsList = speServiceApplCertDetailsService
					.findCertDetailsData(a);
			// --------------------end
			// List<SpeServiceApplCertDetails> applCertDetailsList =
			// speServiceApplCertDetailsService.findByProperty(applicationField,
			// applicationValue);
			for (int i = 0; i < applCertDetailsList.size(); i++) {
				String attributeField = "spdiAttributeId";
				Object attributeValue = applCertDetailsList.get(i).getSpdiAttributeId();
				/*
				 * SpeAttributes speAttributes=new SpeAttributes(); speAttributes
				 * =speAttributesService.findBySingleRecord(attributeField, attributeValue);
				 */
				// lang=(String)session.getAttribute("localLang");
				List<SpeAttributesLanguagesBean> speAttributesLanguagesBean = speAttributesService
						.findByLang(attributeValue, lang);
				for (int j = 0; j < speAttributesLanguagesBean.size(); j++) {

					if (speAttributesLanguagesBean.get(j).getInputTypeId() == 5) {
						if (!applCertDetailsList.get(i).getSpdiAttributeValue().equalsIgnoreCase("NA")) {

							labelValue.add(speAttributesLanguagesBean.get(j).getAttrLabel());
						}
					} else {

						labelValue.add(speAttributesLanguagesBean.get(j).getAttrLabel());
					}

					if (speAttributesLanguagesBean.get(j).getInputTypeId() == 6) {
						withoutFieldSetValue.add("6");
						fieldSetLabelValueSize.add("sectionlabel");
						fieldSetRowSize.add("sectionlabel");
					} else if (speAttributesLanguagesBean.get(j).getFieldSetId() == 0) {
						if (!applCertDetailsList.get(i).getSpdiAttributeValue().equalsIgnoreCase(""))
							withoutFieldSetValue.add(applCertDetailsList.get(i).getSpdiAttributeValue());
						else
							withoutFieldSetValue.add(" ---- ");

						fieldSetLabelValueSize.add("notFieldSet");
						fieldSetRowSize.add("notFieldSet");
					} else {
						if (!applCertDetailsList.get(i).getSpdiAttributeValue().equalsIgnoreCase("NA")) {
							withoutFieldSetValue.add("fieldSetValueExist");
							String[] fieldSetValues = applCertDetailsList.get(i).getSpdiAttributeValue().split("#");
							String[] fieldSetLabels = fieldSetValues[0].split("~");
							fieldSetLabelValueSize.add(fieldSetLabels.length);
							fieldSetRowSize.add(fieldSetValues.length - 1);

							for (int k = 0; k < fieldSetLabels.length; k++) {
								fieldSetLabelValue.add(fieldSetLabels[k]);

							}
							for (int k = 1; k < fieldSetValues.length; k++) {
								String[] fieldSetLabelValues = fieldSetValues[k].split("~");
								for (int l = 0; l < fieldSetLabelValues.length; l++) {
									withFieldSetValue.add(fieldSetLabelValues[l]);
								}
							}
						}
					}
				}
			}
			model.addAttribute("labelValue", labelValue);
			model.addAttribute("withoutFieldSetValue", withoutFieldSetValue);
			model.addAttribute("withFieldSetValue", withFieldSetValue);
			model.addAttribute("fieldSetLabelValue", fieldSetLabelValue);
			model.addAttribute("fieldSetLabelValueSize", fieldSetLabelValueSize);
			model.addAttribute("fieldSetRowSize", fieldSetRowSize);

			// ..................Code For Meta data Detalis In Preview
			// Page...................//
			List<SpeServiceApplicationDetails> speServiceApplicationDetailsMetaDataList = speServiceApplicationDetailsService
					.findByProperty("spdiApplicationId", applId);

			model.put("metaDataDetails", speServiceApplicationDetailsMetaDataList.get(0));
			Integer processingOfficeId = speServiceApplicationDetailsMetaDataList.get(0).getSpdiProcessingOfficeId();
			List<PaceLocationMasterData> processingOfficeTypeId = paceLocationMasterDataService
					.findByProperty("pcdiLocationId", processingOfficeId);
			List<SpeLocnType> processingOfficeTypeName = speLocnTypeService.findByProperty("pcdiLocTypeId",
					processingOfficeTypeId.get(0).getPcdiLocTypeId());
			model.put("processingOfficeTypeName", processingOfficeTypeName.get(0));
			List<SpeApplLocnData> speApplLocnDataEdit = speApplLocnDataService.findByProperty("id.pcdiApplicationId",
					seqId);
			List<SpeLocnType> speLocnTypeList = new ArrayList<SpeLocnType>();
			for (int i = 0; i < speApplLocnDataEdit.size(); i++) {
				speLocnTypeList.addAll(speLocnTypeService.findByProperty("pcdiLocTypeId",
						speApplLocnDataEdit.get(i).getId().getPcdiLocTypeId()));
			}
			model.put("locnType", speLocnTypeList);
			List<PaceLocationMasterData> paceLocationMasterDataMetaDataEdit = new ArrayList<PaceLocationMasterData>();
			for (int i = 0; i < speApplLocnDataEdit.size(); i++) {
				// List<PaceLocationMasterData> locName =
				// paceLocationMasterDataService.findByProperty("pcdiLocationId",
				// speApplLocnDataEdit.get(i).getPcdiLocationId());
				paceLocationMasterDataMetaDataEdit.addAll(paceLocationMasterDataService.findByProperty("pcdiLocationId",
						speApplLocnDataEdit.get(i).getPcdiLocationId()));
			}
			model.put("locName", paceLocationMasterDataMetaDataEdit);
			// ..................Code For Meta data Detalis In Preview Page
			// End...................//

			ArrayList<ApplicationFormModel> annexureList = new ArrayList<ApplicationFormModel>();
			applicationFormModel.setSpdi_application_id(applId);
			/*
			 * if (ducumentNam != null) { for (int k = 0; k < ducumentNam.length; k++) {
			 * applicationFormModel.setAnnexType(Integer .parseInt(upReN[k])); } }
			 */
			String uploadDetails = request.getParameter("upReNo");
			model.addAttribute("uploadDetails", uploadDetails);
			String documnetNumber = request.getParameter("documentNo");
			lang = (String) session.getAttribute("localLang");
			applicationFormModel.setSpdvLangCode(lang);
			annexureList = speServiceApplicationAnnexureService.getEnclosureId(applicationFormModel);
			Integer serviceD = Integer.parseInt(request.getParameter("serviceId"));
			applicationFormModel.setSpdi_service_id(serviceD);
			ArrayList enclosuresList = speServiceEnclosuresService.showAllEnclosures(applicationFormModel);
			model.addAttribute("annexureList", annexureList);
			model.put("serviceData",
					speServiceDefinitionMastSevice.findById(Integer.parseInt(request.getParameter("serviceId"))));
			model.put("applId", applId);
			model.put("ServiceId", request.getParameter("serviceId"));
			model.put("refNo", request.getParameter("refNo"));
			Integer roleId = Integer.parseInt(session.getAttribute("ROLL_ID").toString());
			model.put("roleId", roleId);

			model.put("message", message);
			model.put("serviceName",
					speServiceDefinitionMastSevice.findServiceName(serviceId, lang).get(0).getServiceLangName());
			/* Start 17122015 for Blocking of Editing Application for Sendback Case */
			model.put("ApplStatus", ApplStatus);
			/* End 17122015 for Blocking of Editing Application for Sendback Case */
			return "beneficiary/AnnexureAcknowledgement";
			// return "beneficiary/EditAnnexureAcknowledgement";
		} catch (Exception Ex) {
			Ex.printStackTrace();
			/*
			 *
			 * session.getAttribute("userId").toString() ; IExceptionHandler expHandler =
			 * ExceptionHandlerFactory.getInstance().create(); String redirectPath =
			 * expHandler.handleSaveRedirectException(req,"","label.epsplus",
			 * Integer.parseInt(userId), Ex); return redirectPath;
			 */

		}
		return "beneficiary/AnnexureAcknowledgement";
	}