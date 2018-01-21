function createItem(i) {
    var newItem = document.createElement("div");
    newItem.setAttribute("class", "itemStyle");
    newItem.setAttribute("id", "item"+i);

    var leftItem = document.createElement("div");
    leftItem.setAttribute("class", "leftItemStyle");
    leftItem.setAttribute("id", "leftItem"+i);

    var rightItem = document.createElement("div");
    rightItem.setAttribute("class", "rightItemStyle");
    rightItem.setAttribute("id", "rightItem"+i);

    newItem.appendChild(leftItem);
    newItem.appendChild(rightItem);

    return newItem;
}

var i = 1;
var cur_h = 1600;

function submitFun() {
    var mainContent = document.getElementById("mainContent");
    var content = document.getElementById("textAreaContent").value;
    var newItem = createItem(i);
    mainContent.appendChild(newItem);

    var area = document.getElementById("leftItem"+i);
    area.innerHTML += "<image class='imageStyle' src='./images/image6.jpg'>" +
        "<h4>一个有故事的人！</h4>";
    area = document.getElementById("rightItem"+i);
    area.innerHTML += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
    area.innerHTML += content;

    mainContent.style.height = cur_h + "px";
    document.getElementById("textAreaContent").value = "";

    cur_h = cur_h + 200;
    i++;
}

function resetFun() {
    var content = document.getElementById("textAreaContent");
    content.value = "";
}

function main() {
    var mainContent = document.getElementById("mainContent");
    for (; i <= 5; i++) {
        var newItem = createItem(i);
        mainContent.appendChild(newItem);
    }

    var area = document.getElementById("leftItem1");
    area.innerHTML += "<image class='imageStyle' src='./images/image1.jpg'>" +
        "<h4>天行健，君子以自强不息</h4>";
    area = document.getElementById("rightItem1");
    area.innerHTML += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果附近没有废旧电" +
        "池回收机构（比如大部分城市以及乡村），且电池数量比较多，可以自行联络当地环保局或者邮寄到其他" +
        "城市的回收机构。比如北京环境卫生工程集团有限公司二清分公司（含地址、电话），将免费上门回收30" +
        "公斤以上废旧电池。";

    area = document.getElementById("leftItem2");
    area.innerHTML += "<image class='imageStyle' src='./images/image2.jpg'>" +
        "<h4>离开我的那天你不曾回收...</h4>";
    area = document.getElementById("rightItem2");
    area.innerHTML += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        "考虑到电池的使用周期较短，而且从消费角度不容易统计，因此从电池生产的" +
        "源头做一个参考。根据 于明, 等. (2014). \"浅谈废旧电池的危害及其回收利用.\" 黑龙江环" +
        "境通报1: 031.，中国在2010年的电池产量有340. 5 亿只。其中，镍镉电池5 亿只，镍氢电池" +
        "10. 5 亿只，锂离子电池20 亿只，锌锰电池200 亿只，碱锰电池105 亿只，铅酸蓄电池1. 15 " +
        "亿千伏安时，天阳能电池8000 兆瓦."

    area = document.getElementById("leftItem3");
    area.innerHTML += "<image class='imageStyle' src='./images/image3.jpg'>" +
        "<h4>我没有说谎！</h4>";
    area = document.getElementById("rightItem3");
    area.innerHTML += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        "首先，合格碱性电池已经基本实现无汞，有害物含量已经很低。我国政府致力" +
        "于从源头推进电池的”无汞化“。比如中国轻工总会、原国家环保总局、国家质量技术监督局等9" +
        "个部委局于1997年12月31日联合发布了《关于限制电池产品汞含量的规定》，要求到2002年1月" +
        "1日禁止在国内生产和经销汞含量大于电池重量0.025％的电池，到2006年1月1日禁止在国内生" +
        "产和经销汞含量大于电池重量0.0001％的碱性锌锰电池。\n";

    area = document.getElementById("leftItem4");
    area.innerHTML += "<image class='imageStyle' src='./images/image4.jpg'>" +
        "<h4>仰望星空，脚踏实地。</h4>";
    area = document.getElementById("rightItem4");
    area.innerHTML += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        "你那边没有废电池回收机构吧？没有的话，你只能这样做，1 把含铅汞的废电" +
        "池挑出来，继续放在那个盒子里，直到找到废电池回收机构为止。 2 不含铅汞的废电池，如果你" +
        "在城市，放进任何一个城市垃圾箱即可。环卫会处理的，即使不处理也没关系，原因后面会说。如" +
        "果你在农村，两三个一组，扔到偏僻不靠近水源（井，水库）的地方就可以。\n";

    area = document.getElementById("leftItem5");
    area.innerHTML += "<image class='imageStyle' src='./images/image5.jpg'>" +
        "<h4>张弛有度，越挫越勇！</h4>";
    area = document.getElementById("rightItem5");
    area.innerHTML += "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" +
        "保护环境，是说不要刻意浪费资源，不要刻意污染环境。不是100%的不浪费" +
        "、不污染。一辆汽车，从开采矿石，到你买下，到它报废，对环境的污染，比你一辈子用过的废电" +
        "池的污染，要大上几十倍。要做到100%的不浪费、不污染，人类只能回到原始社会去。";

    

    var submitBtn = document.getElementById("submit");
    submitBtn.style.backgroundColor = "green";

    var resetBtn = document.getElementById("reset");
    resetBtn.style.backgroundColor = "red";

    submitBtn.onclick = function () {
        submitFun();
    };

    resetBtn.onclick = function () {
        resetFun();
    };
}

main();