const shower = async (startTime) => {
    setTimeout(() => { }, 10000);
    return new Date().getMilliseconds();
};
const eatBreakFast = async (step1FinishTime) => {
    setTimeout(() => { }, 10000);
    return new Date().getMilliseconds();
};
const getDressed = async (step2FinishTime) => {
    setTimeout(() => { }, 5000);
    return new Date().getMilliseconds();
};
const putOnMakeUP = async (step3FinishTime) => {
    setTimeout(() => { }, 2000);
    return new Date().getMilliseconds();
};
const readNews = async (step4FinishTime) => {
    setTimeout(() => { }, 2000);
    return new Date().getMilliseconds();
};

const morningRoutine = async (startTime) => {
    console.log(startTime);
    const step1FinishTime = await shower(startTime);
    console.log(step1FinishTime + "shower");
    const step2FinishTime = await eatBreakFast(step1FinishTime);
    console.log(step2FinishTime + "eatBreakFast");
    const step3FinishTime = await getDressed(step2FinishTime);
    console.log(step3FinishTime);
    const step4FinishTime = await putOnMakeUP(step3FinishTime);
    console.log(step4FinishTime);
    const step5FinishTime = await readNews(step4FinishTime);
    console.log(step5FinishTime);
    return step5FinishTime;
};

morningRoutine(new Date().getMilliseconds());
