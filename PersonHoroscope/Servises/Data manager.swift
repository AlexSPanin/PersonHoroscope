//
//  Data manager.swift
//  PersonHoroscope
//
//  Created by Александр Панин on 01.01.2022.
//

import Foundation
import CoreText
import UIKit

// MARK - массив наименований периодов гороскопов и интервалы периодов

struct DataManager {
    let period: Period
    let start: String
    let finish: String
    let name: String
    let image: String
    let title: String
    let forecast: String
   
    static func getNamesPeriod(for sender: Horoscope) -> [DataManager] {
        switch sender {
        case .zodiac:
            return [
                DataManager(period: .aries, start: "0321", finish: "0420", name: "Овен",image: "aries",
                            title: TitlePeriod.getTitlePeriod(period: .aries).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .aries).forecast),
                DataManager(period: .taurus, start: "0421", finish: "0521", name: "Телец", image: "taurus",
                            title: TitlePeriod.getTitlePeriod(period: .taurus).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .taurus).forecast),
                DataManager(period: .gemini, start: "0522", finish: "0621", name: "Близнецы", image: "gemini",
                            title: TitlePeriod.getTitlePeriod(period: .gemini).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .gemini).forecast),
                DataManager(period: .cancer, start: "0622", finish: "0722", name: "Рак", image: "cancer",
                            title: TitlePeriod.getTitlePeriod(period: .cancer).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cancer).forecast),
                DataManager(period: .leo, start: "0723", finish: "0823", name: "Лев", image: "leo",
                            title: TitlePeriod.getTitlePeriod(period: .leo).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .leo).forecast),
                DataManager(period: .virgo, start: "0824", finish: "0922", name: "Дева", image: "virgo",
                            title: TitlePeriod.getTitlePeriod(period: .virgo).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .virgo).forecast),
                DataManager(period: .libra, start: "0923", finish: "1023", name: "Весы", image: "libra",
                            title: TitlePeriod.getTitlePeriod(period: .libra).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .libra).forecast),
                DataManager(period: .scorpio, start: "1024", finish: "1122", name: "Скорпион", image: "scorpio",
                            title: TitlePeriod.getTitlePeriod(period: .scorpio).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .scorpio).forecast),
                DataManager(period: .sagittarius, start: "1123", finish: "1221", name: "Стрелец", image: "sagittarius",
                            title: TitlePeriod.getTitlePeriod(period: .sagittarius).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .sagittarius).forecast),
                DataManager(period: .capricorn, start: "1222", finish: "0120", name: "Козерог", image: "capricorn",
                            title: TitlePeriod.getTitlePeriod(period: .capricorn).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .capricorn).forecast),
                DataManager(period: .aquarius, start: "0121", finish: "0218", name: "Водолей", image: "aquarius",
                            title: TitlePeriod.getTitlePeriod(period: .aquarius).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .aquarius).forecast),
                DataManager(period: .pisces, start: "0219", finish: "0320", name: "Рыбы", image: "pisces",
                            title: TitlePeriod.getTitlePeriod(period: .pisces).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pisces).forecast)
            ]
        case .druid:
            return [
                DataManager(period: .apple, start: "1223", finish: "0101", name: "Яблоня", image: "apple",
                            title: TitlePeriod.getTitlePeriod(period: .apple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .apple).forecast),
                DataManager(period: .fir, start: "0102", finish: "0111", name: "Пихта", image: "fir",
                            title: TitlePeriod.getTitlePeriod(period: .fir).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .fir).forecast),
                DataManager(period: .elm, start: "0112", finish: "0124", name: "Вяз", image: "elm",
                            title: TitlePeriod.getTitlePeriod(period: .elm).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .elm).forecast),
                DataManager(period: .cypress, start: "0125", finish: "0203", name: "Кипарис", image: "cypress",
                            title: TitlePeriod.getTitlePeriod(period: .cypress).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cypress).forecast),
                DataManager(period: .poplar, start: "0204", finish: "0208", name: "Тополь", image: "poplar",
                            title: TitlePeriod.getTitlePeriod(period: .poplar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .poplar).forecast),
                DataManager(period: .cedar, start: "0209", finish: "0218", name: "Кедр", image: "cedar",
                            title: TitlePeriod.getTitlePeriod(period: .cedar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cedar).forecast),
                DataManager(period: .pine, start: "0219", finish: "0229", name: "Сосна", image: "pine",
                            title: TitlePeriod.getTitlePeriod(period: .pine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pine).forecast),
                DataManager(period: .willow, start: "0301", finish: "0310", name: "Ива", image: "willow",
                            title: TitlePeriod.getTitlePeriod(period: .willow).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .willow).forecast),
                DataManager(period: .linder, start: "0311", finish: "0320", name: "Липа", image: "linder",
                            title: TitlePeriod.getTitlePeriod(period: .linder).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .linder).forecast),
                DataManager(period: .oak, start: "0321", finish: "0321", name: "Дуб", image: "oak",
                            title: TitlePeriod.getTitlePeriod(period: .oak).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .oak).forecast),
                DataManager(period: .hazel, start: "0322", finish: "0331", name: "Орешник", image: "hazel",
                            title: TitlePeriod.getTitlePeriod(period: .hazel).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hazel).forecast),
                DataManager(period: .rowan, start: "0401", finish: "0410", name: "Рябина", image: "rowan",
                            title: TitlePeriod.getTitlePeriod(period: .rowan).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rowan).forecast),
                DataManager(period: .maple, start: "0411", finish: "0420", name: "Клен", image: "maple",
                            title: TitlePeriod.getTitlePeriod(period: .maple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .maple).forecast),
                DataManager(period: .nut, start: "0421", finish: "0430", name: "Орех", image: "nut",
                            title: TitlePeriod.getTitlePeriod(period: .nut).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .nut).forecast),
                DataManager(period: .jasmine, start: "0501", finish: "0514", name: "Жасмин", image: "jasmine",
                            title: TitlePeriod.getTitlePeriod(period: .jasmine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .jasmine).forecast),
                DataManager(period: .chestnut, start: "0515", finish: "0524", name: "Каштан", image: "chestnut",
                            title: TitlePeriod.getTitlePeriod(period: .chestnut).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .chestnut).forecast),
                DataManager(period: .ash, start: "0525", finish: "0603", name: "Ясень", image: "ash",
                            title: TitlePeriod.getTitlePeriod(period: .ash).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .ash).forecast),
                DataManager(period: .hornbeam, start: "0604", finish: "0613", name: "Граб", image: "hornbeam",
                            title: TitlePeriod.getTitlePeriod(period: .hornbeam).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hornbeam).forecast),
                DataManager(period: .figs, start: "0614", finish: "0623", name: "Инжир", image: "figs",
                            title: TitlePeriod.getTitlePeriod(period: .figs).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .figs).forecast),
                DataManager(period: .birch, start: "0624", finish: "0624", name: "Береза", image: "birch",
                            title: TitlePeriod.getTitlePeriod(period: .birch).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .birch).forecast),
                DataManager(period: .apple, start: "0625", finish: "0704", name: "Яблоня", image: "apple",
                            title: TitlePeriod.getTitlePeriod(period: .apple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .apple).forecast),
                DataManager(period: .fir, start: "0705", finish: "0714", name: "Пихта", image: "fir",
                            title: TitlePeriod.getTitlePeriod(period: .fir).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .fir).forecast),
                DataManager(period: .elm, start: "0715", finish: "0725", name: "Вяз", image: "elm",
                            title: TitlePeriod.getTitlePeriod(period: .elm).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .elm).forecast),
                DataManager(period: .cypress, start: "0726", finish: "0804", name: "Кипарис", image: "cypress",
                            title: TitlePeriod.getTitlePeriod(period: .cypress).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cypress).forecast),
                DataManager(period: .poplar, start: "0805", finish: "0813", name: "Тополь", image: "poplar",
                            title: TitlePeriod.getTitlePeriod(period: .poplar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .poplar).forecast),
                DataManager(period: .cedar, start: "0814", finish: "0823", name: "Кедр", image: "cedar",
                            title: TitlePeriod.getTitlePeriod(period: .cedar).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .cedar).forecast),
                DataManager(period: .pine, start: "0824", finish: "0902", name: "Сосна", image: "pine",
                            title: TitlePeriod.getTitlePeriod(period: .pine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pine).forecast),
                DataManager(period: .willow, start: "0903", finish: "0912", name: "Ива", image: "willow",
                            title: TitlePeriod.getTitlePeriod(period: .willow).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .willow).forecast),
                DataManager(period: .linder, start: "0913", finish: "0922", name: "Липа", image: "linder",
                            title: TitlePeriod.getTitlePeriod(period: .linder).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .linder).forecast),
                DataManager(period: .olive, start: "0923", finish: "0923", name: "Маслина", image: "olive",
                            title: TitlePeriod.getTitlePeriod(period: .olive).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .olive).forecast),
                DataManager(period: .hazel, start: "0924", finish: "1003", name: "Орешник", image: "hazel",
                            title: TitlePeriod.getTitlePeriod(period: .hazel).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hazel).forecast),
                DataManager(period: .rowan, start: "1004", finish: "1013", name: "Рябина", image: "rowan",
                            title: TitlePeriod.getTitlePeriod(period: .rowan).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rowan).forecast),
                DataManager(period: .maple, start: "1014", finish: "1023", name: "Клен", image: "maple",
                            title: TitlePeriod.getTitlePeriod(period: .maple).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .maple).forecast),
                DataManager(period: .nut, start: "1024", finish: "1102", name: "Орех", image: "nut",
                            title: TitlePeriod.getTitlePeriod(period: .aquarius).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .aquarius).forecast),
                DataManager(period: .jasmine, start: "1103", finish: "1111", name: "Жасмин", image: "jasmine",
                            title: TitlePeriod.getTitlePeriod(period: .jasmine).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .jasmine).forecast),
                DataManager(period: .chestnut, start: "1112", finish: "1121", name: "Каштан", image: "chestnut",
                            title: TitlePeriod.getTitlePeriod(period: .chestnut).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .chestnut).forecast),
                DataManager(period: .ash, start: "1122", finish: "1201", name: "Ясень", image: "ash",
                            title: TitlePeriod.getTitlePeriod(period: .ash).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .ash).forecast),
                DataManager(period: .hornbeam, start: "1202", finish: "1211", name: "Граб", image: "hornbeam",
                            title: TitlePeriod.getTitlePeriod(period: .hornbeam).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .hornbeam).forecast),
                DataManager(period: .figs, start: "1212", finish: "1220", name: "Инжир", image: "figs",
                            title: TitlePeriod.getTitlePeriod(period: .figs).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .figs).forecast),
                DataManager(period: .beech, start: "1221", finish: "1222", name: "Бук", image: "beech",
                            title: TitlePeriod.getTitlePeriod(period: .beech).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .beech).forecast)
            ]
        case .china:
            return [
                DataManager(period: .monkey, start: "2028", finish: "2028", name: "Обезьяны", image: "monkey",
                            title: TitlePeriod.getTitlePeriod(period: .monkey).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .monkey).forecast),
                DataManager(period: .rooster, start: "2029", finish: "2029", name: "Петуха", image: "rooster",
                            title: TitlePeriod.getTitlePeriod(period: .rooster).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rooster).forecast),
                DataManager(period: .dog, start: "2030", finish: "2030", name: "Собаки", image: "dog",
                            title: TitlePeriod.getTitlePeriod(period: .dog).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .dog).forecast),
                DataManager(period: .pig, start: "2031", finish: "2031", name: "Свиньи", image: "pig",
                            title: TitlePeriod.getTitlePeriod(period: .pig).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .pig).forecast),
                DataManager(period: .rat, start: "2032", finish: "2032", name: "Крысы", image: "rat",
                            title: TitlePeriod.getTitlePeriod(period: .rat).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rat).forecast),
                DataManager(period: .ox, start: "2033", finish: "2033", name: "Быка", image: "ox",
                            title: TitlePeriod.getTitlePeriod(period: .ox).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .ox).forecast),
                DataManager(period: .tiger, start: "2034", finish: "2034", name: "Тигра", image: "tiger",
                            title: TitlePeriod.getTitlePeriod(period: .tiger).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .tiger).forecast),
                DataManager(period: .rabbit, start: "2035", finish: "2035", name: "Зайца", image: "rabbit",
                            title: TitlePeriod.getTitlePeriod(period: .rabbit).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .rabbit).forecast),
                DataManager(period: .dragon, start: "2036", finish: "2036", name: "Дракона", image: "dragon",
                            title: TitlePeriod.getTitlePeriod(period: .dragon).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .dragon).forecast),
                DataManager(period: .snake, start: "2037", finish: "2037", name: "Змеи", image: "snake",
                            title: TitlePeriod.getTitlePeriod(period: .snake).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .snake).forecast),
                DataManager(period: .horse, start: "2038", finish: "2038", name: "Лошади", image: "horse",
                            title: TitlePeriod.getTitlePeriod(period: .horse).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .horse).forecast),
                DataManager(period: .sheeps, start: "2039", finish: "2039", name: "Овцы", image: "sheeps",
                            title: TitlePeriod.getTitlePeriod(period: .sheeps).title,
                            forecast: TitlePeriod.getTitlePeriod(period: .sheeps).forecast)
            ]
        }
    }
}

// MARK - массивs описаний гороскопов и их периодов

struct TitleHoroscope {
    let horoscope: Horoscope
    let title: String
    let image: String
    
    static func getTitleHoroscope() -> [TitleHoroscope] {
        [
            TitleHoroscope(horoscope: .zodiac, title: Horoscope.zodiac.rawValue, image: "zodiac"),
            TitleHoroscope(horoscope: .china, title: Horoscope.china.rawValue, image: "china"),
            TitleHoroscope(horoscope: .druid, title: Horoscope.druid.rawValue, image: "druid")
        ]
    }
}

// MARK - получение прогноза и описание конкретного периода

struct TitlePeriod {
    static func getTitlePeriod(period: Period) -> TitlesPeriods {
        let titlesPeriods = TitlesPeriods.getTitlesPeriod()
        
        for index in titlesPeriods {
            if period == index.period { return index}
        }
        return titlesPeriods[0]
    }
}

// MARK -  общий массив прогнозов и описаний периодов гороскопа

struct TitlesPeriods {
    let period: Period
    let title: String
    let forecast: String
    
    static func getTitlesPeriod() -> [TitlesPeriods] {
        [
            TitlesPeriods(period: .aries,
                          title: "Овен – знак зодиака, который принято считать очень энергичным, динамичным и даже бурным знаком. Овны по природе своей очень откровенны, любят всегда и всем говорить правду, крайне отрицательно относятся ко всем проявлениям несправедливости. В них присутствует склонность к деспотизму, особенно когда дело доходит до защиты своей точки зрения и стремления добиться своего. Многие представители данного знака очень ранимы и наивны, как настоящие дети. В их поведении превалируют чувства, а не разум. Поэтому они очень склонны к спонтанным решениям, редко делают предварительные расчеты своих шагов. Излишняя эмоциональность и сердечность сказывается на отношении к окружающему миру в целом. Овны готовы верить буквально каждому слову и поступку. Отсутствие как таковой тактики в собственных действиях, делает их людьми не особо ответственными, хотя они и добиваются не малых успехов в карьере. Овнам не хватает стабильности и терпения. Данный знак немного эгоистичен, что обуславливается некоторыми детскими чертами характера. Иногда это себялюбие способно сильно навредить окружающим. И все же Овны очень любимы окружающими за их жизнелюбие, честность, наивность и эмоциональность.",
                          forecast: "Согласно гороскопу, 2022 год будет важным годом для всех, кто родился под знаком Овна. Будет несколько интенсивных периодов, но благодаря Сатурну, вы сможете не сбиться с пути. Влюбленным новый год принесет прекрасные сюрпризы, а в апреле ваша профессиональная жизнь наберет обороты. Для тех из вас, кто в настоящее время одинок, конец года обещает быть весьма многообещающим! Сатурн поддержит ваши проекты и поможет вам стать более эффективными. В этом году ваша цель — добиться успеха в бизнесе, а также сбалансировать свои финансы. Благодаря Юпитеру, который прибудет в вашем знаке в мае, удача непременно будет на вашей стороне. Единственная загвоздка в том, что вам нужно знать, как распознать возможности, которые вам предоставляются. Успех теперь в ваших руках, и все возможно. После хорошего старта в январе и полноценного весеннего периода, в июне вы можете ожидать бурную деятельность. К счастью, июль и август успокоят вас, и вы войдете в осень, полную энергии. Октябрь по-прежнему будет предоставлять вам множество возможностей для развития. При этом из-за стратегических ошибок с вашей стороны, в ноябре и декабре будет ощущаться определенное беспокойство. К счастью, завершение года будет благоприятным."),
            TitlesPeriods(period: .taurus,
                          title: "Телец наделяет своих представителей особыми качествами – они очень энергичны, готовы к постоянной работе, нацеленной на получение долгожданного результата. Знаком покровительствует планета Венера, что влияет на характер тельцов: они могут быть нежными и страстными одновременно, они отличные любовники и хорошие компаньоны. Главной чертой представителей данного знака зодиака является любовь ко всему красивому. Их привлекает все: живопись, музыка и прежде всего эстетика и красота человеческого тела. Тельцы всегда имеют определенную цель в жизни. Именно она заставляет их непрерывно работать над собой, становиться еще напористей и успешнее. Предрасположенность к любовным утехам у Тельцов объясняется их неиссякаемой жизненной энергией и силой. Поэтому половой акт для них является способом релаксации. Тельцы знают толк в хороших и дорогих покупках. Именно поэтому они стремятся зарабатывать большие деньги. Процесс покупок доставляет им не малое удовольствие. Тельцы сдержанны, молчаливы, больше любит слушать и размышлять, поэтому может показаться немного скучным собеседником. Однако в целом тельцы очень дружелюбны и просты.",
                          forecast: "Согласно гороскопу 2022 года, Телец — настоящая сила природы, и представители этого знака любят наслаждаться удовольствиями, которые может предложить жизнь.  В этом году вы, вероятно, удивите себя, особенно когда дело касается вашего стойкого здоровья. Ваше здоровье нерушимо. Кроме того, вы можете рассчитывать на успех как в личной жизни, так и в деловой сфере. Для вас астрология 2022 год станет годом успеха. В прогнозе Тельца на 2022 год Уран продолжает увеличивать вашу смелость, но Сатурн по-прежнему препятствует вашему прогрессу, порождая реальные препятствия, неудачи и страхи. К счастью, Юпитер дует на вас ободряющими ветрами в течение первой половины года, и тогда вы должны больше полагаться на свою находчивость, чем на удачу. Но, будучи добродушным и улыбчивым, вы сосредоточитесь на радостях любви, отодвинув работу на второй план. Согласно астрологическим прогнозам на 2022 год, вам нужно будет сосредоточить свою энергию на улучшении перспектив трудоустройства. Когда дело доходит до вашей личной жизни, вам нужно избегать увлечения людьми, которые не стоят того, чтобы быть поводом для волнения. Вы уверены в себе и упорны. Кроме того, вы хотите доказать всем, что были правы, изменив некоторые аспекты вашего знака зодиака в 2022 году."),
            TitlesPeriods(period: .gemini,
                          title: "Близнецы – знак зодиака, характеристика которого дана ниже, является третьим знаком в зодиакальном круге. Человек, рожденный под знаком близнецов, натура двойственная, неоднозначная и немного не постоянная. Обычно такие люди легко обучаемые, талантливые, склонны к литературному творчеству. Они отличаются высоким интеллектом, и в то же время весьма привлекательны. Характер у представителей данного знака можно назвать сложным. Им свойственна резкая перемена настроения, интересов. Они любят пофлиртовать. Важная черта их характера – излишняя чувствительность. Буквально из любой мелочи они могут раздуть настоящую трагедию. Знаку покровительствует одна единственная планета – Меркурий. Данный факт объясняет некоторое равнодушие к различного рода критике, замечаниям и шуткам в их адрес. Близнецы довольно хладнокровны, обладают сильным защитным механизмом от нападок со стороны. Близнецы – очень творческие люди по натуре. Многие известные художники и писатели были рождены именно под этим знаком. Они во всем ищут легкости и простоты. Знак не отличается равновесием, последовательностью. Близнецы любят начинать несколько дел сразу, при этом могут скакать от одного к другому, так нигде и не преуспев. Для того чтобы добиться успеха им необходимо немного усердия, упорства и усилий.",
                          forecast: "Согласно гороскопу, 2022 год станет важным годом для Близнецов; годом, который вознаградит за тяжелую работу и усилия. По-настоящему, сентиментально и эмоционально вы встретите много интересных личностей и хорошо проведете время с семьей и друзьями. Юпитер и Сатурн в Водолее дарят вам энтузиазм, любознательность и оптимизм. Однако остерегайтесь Нептуна, который иногда будет подталкивать вас к тому, чтобы поднять планку слишком высоко. В 2022 года, находясь в Близнецах, Сатурн поддержит вас в плане организации, владения ситуациями, но при этом вы должны поддерживать связь с реальностью, чтобы реализовать перспективы, которые вы предвидели в 2021 году. Благодаря Юпитеру в Овне с мая по октябрь вы также можете рассчитывать на то, что удача будет на вашей стороне. Такая удача поможет стимулировать ваши проекты, поэтому принимайте смелые решения до того, как Марс станет ретроградным в вашем знаке 30 октября. Чтобы провести хороший год, вам иногда придется играть со временем и реальностью, что может посеять семя сомнения в своих мечтах. В любом случае сохраняйте хладнокровие и используйте возможности второй половины года. Если вы последуете этому совету, то непременно будете гордиться своими достижениями. У вас есть все необходимое для реализации многих ваших желаний и амбиций, то есть до тех пор, пока вы не слишком жадны. Сатурн продолжит оказывать вам поддержку, когда дело доходит до управления ситуациями. После сомнительного периода весны, благодаря Юпитеру и Марсу, следующий сезон будет особенно стимулирующим и благоприятным для ваших планов."),
            TitlesPeriods(period: .cancer,
                          title: "Рак – знак зодиака, находящийся под покровительством водной стихии и Луны. Степень влияния Луны на характер Раков достаточно высока. Они довольно изменчивы, любят перемены, ведут непрекращающуюся работу над совершенствованием своего собственного внутреннего мира. Раки являются одним из самых ранимых знаков зодиака. Данную свою черту они всеми силами пытаются спрятать за маской сильного и иногда холодного человека. По природе своей Раки очень нежны, женственны, в положительном смысле данных характеристик. Они до безумия любят своих родных и довольно долго находятся в тесной связи с родителями, в которых продолжают нуждаться до конца своей жизни. Раки люди домашние и семейные, но и от далекого путешествия не откажутся, так как любят повидать новое и расширять свой кругозор.",
                          forecast: "Согласно гороскопу, для Раков 2022 год будет полон перипетий и поворотов. Особенно на сентиментальном фронте, где вы получите подтверждения своим подозрениям. Кроме того, ваши желания наконец-то исполнятся. В любом случае окружите себя людьми, которые любят вас и заботятся о вас, и держитесь подальше от тех, кто пытается свести к минимуму ваш успех. В гороскопе 2022 года Юпитер и Нептун работают над вашим успехом и восхваляют ваш творческий потенциал в течение первой части года. Это отличное начало для вас! Уран предлагает вам новые виды деятельности, и у вас не будет недостатка в идеях и проектах. Начиная с июня, события развиваются, как правило, медленнее и сложнее, но ваш эмоциональный сектор защищает ваш моральный дух. В финансовом отношении регулярный контроль имеет важное значение. В 2022 году Раки будут работать над развитием своей личной жизни и своей деятельности. Вы будете использовать свое великолепное вдохновение, чтобы удивлять! В этом году звезды дадут вам средства развить свои таланты и превзойти самих себя, но, столкнувшись с определенными препятствиями, вы можете растеряться и утратить чувство реальности. Оставайтесь заслуживающими доверия, действуйте точно и в нужное время!"),
            TitlesPeriods(period: .leo,
                          title: "Знак зодиака Лев является пятым знаком в зодиакальном круге, стихией которого является Огонь. Львы по натуре своей очень доброжелательны, великодушны и искренни. Они обожают внимание и комплименты, всю жизнь стремятся к превосходству и лидерству. Вся жизнь для Львов – сцена, на которой, как им кажется, им приходится играть главную роль. Они готовы вести за собой, внушать людям надежду, веселить, одаривать подарками, руководить, защищать близких им людей. Они не боятся опасности, и даже наоборот, очень любят риск. Отрицательной чертой знака является гордость. Ее переизбыток может сыграть со львом злую шутку и превратить его в депрессивного, причудливого чудака, направо и налево раскидывающего чудаковатые и странные шутки. В стиле одежды Львы любят помпезность. Они способны хорошо одеваться, особенно если на это у них есть достаточно денег.",
                          forecast: "Сточки зрения астрологии 2022 год будет очень важным годом для Льва; это будет переходный период и начало пути, который закончится в 2023 году. В профессиональном плане будет много давления, и будет нелегко понять, какой выбор сделать, хотя секрет заключается в том, чтобы следовать своему инстинкту, даже если это означает идти против советов членов семьи или друзей. В 2022 году Сатурн и Уран все еще влияют на ваши амбиции. С одной стороны, Сатурн дает вам структуру, но иногда, когда вы сталкиваетесь с желанием перемен, он оказывает негативное влияние. К счастью, благодаря Юпитеру в Овне с 11 мая по 28 октября вы будете продолжать свои проекты, преисполненные светлого оптимизма. Согласно гороскопу для знака Лев, в 2022 году вы должны полагаться на свой опыт и доверять своему потенциалу, чтобы не упустить возможности для развития. В 2022 году, если вы хотите добиться успеха в определенных изменениях курса и различных совместных проектах, вам потребуется хорошая доза терпения, утонченности и такта. Не торопитесь ни с чем, но проявите свою добрую волю, как только вы примете решение!"),
            TitlesPeriods(period: .virgo,
                          title: "Дев отличает особый аналитический склад ума. Дева – знак зодиака, представители которого любят работать над собой, последовательны и ответственны. Предпочитают работать в выбранной ими сфере деятельности, и часто достигаю в ней высоких результатов. Все, за что они берутся, они делают хорошо. Дева – знак приземленный. В каждом событии, факте и словах они ищут логику, доказательство, научное подтверждение. Девы настоящие скептики, отрицающие существования интуиции и откровения. Девы склонны к долгим рассуждениям. Они боятся принимать спонтанные и резкие решения, поэтому очень часто упускают представленные им шансы и возможности. Это же объясняется не достаточной уверенностью в себя и свои силы. Постепенно эта уверенность растет, но лишь с количеством полученных успешных результатов. Они довольно просты, практичны, уделяют много внимания мелочам, здоровью. В людях ценят стабильность, надежность и уверенность.",
                          forecast: "По гороскопу жизнь представителей знака Дева в 2022 году будет полна перипетий и поворотов. Вашим ключом к успеху будет принятие перемен, даже если это означает отказ от привычек и того, что вы считаете само собой разумеющимся. Действительно, это будет напряженный год, и предстоит осуществить множество проектов. Имейте в виду, что секрет в том, чтобы всегда верить и никогда не сдаваться. Согласно гороскопу Девы на 2022 года, ваша рабочая нагрузка будет значительной, и это вполне может повлиять на многие стороны жизни. У вас будет решимость развиваться в своей профессиональной жизни. Новый контракт или связь может способствовать вашему успеху. Ваш характер и сила воли будут выдающимися. Однако сначала вы должны решить определенные задачи, чтобы облегчить свою рабочую нагрузку и осознать открывающиеся возможности, чтобы не тратить время на безумные мечты. В 2022 году вы не будете бояться износа, трудностей или уловок. Кроме того, вы принимаете свою судьбу с отважным и победоносным сердцем!"),
            TitlesPeriods(period: .libra,
                          title: "Весы – знак зодиака, который благодаря сильному влиянию планеты Венера, наделяет людей особой привлекательностью и шармом. Представители этого знака Зодиака не идут на все ради похвалы, ведь их индивидуальность и статус гораздо важнее недолгих зрительских оваций. Смысл жизни представители данного знака видят в создании семьи. При этом партнер Весов должен предоставлять им немного свободы и сохранять их индивидуальность. Весы довольно общительны, уравновешены, любят находиться в обществе. Поэтому и работу выбирают соответствующую. Весы – это ярые борцы за справедливость. Они увлекаются психологией, их интересуют актуальные общественные явления, которые они с удовольствием анализируют. Они отличные советчики и всегда помогут дельным советом. Представителей данного знака сложно вывести из себя. В любом случае, после проявления гнева они быстро успокаиваются, и на место ему приходит чувство подавленности.",
                          forecast: "Согласно гороскопу, 2022 год станет важным годом для людей, родившихся под знаком Весов. Вы воспользуетесь благосклонностью Сатурна и Юпитера, хотя Плутон будет всеми силами пытаться помешать вам и заставлять вас иметь дело с неожиданными событиями и препятствиями. В профессиональном плане вам нужно будет продемонстрировать способность рисковать, хотя не всегда будет легко оставаться сосредоточенным и решительным. Окружите себя людьми, которые любят вас и заботятся о вас. В 2022 году Сатурн предлагает вам всю свою строгость, мужество и боеспособность. Юпитер защищает вашу жизненную силу и освещает вашу повседневную жизнь вплоть до мая. Затем он доброжелательно заботится о ваших контрактах и любовных делах. Плутон продолжает преображать вас внутренне, а это значит, что вы настроены на обретение мудрости. В финансовом отношении Уран обязывает вас следить за своими активами, чтобы избежать неприятных сюрпризов, но в целом вы движетесь к успеху. В течение всего года вам будет сопутствовать удача, но в основном именно вы будете создавать свою судьбу. Ваша способность приходить в норму, умение владеть своими талантами и ваше драгоценное окружение — вот те факторы, которые помогут вам выделиться в 2022 году. Плутон, который причинил вам некоторые неприятности в прошлом году, в 2022 году берет на себя ответственность помочь вам обрести мудрость. Это настоящий бонус, когда дело доходит до умелого управления вашими отношениями. Всякий раз, когда что-то усложняется, вы всегда в конечном итоге находите решение, чтобы умерить тон."),
            TitlesPeriods(period: .scorpio,
                          title: "Скорпион – знак зодиака, который в астрологии считается пожалуй самым противоречивым знаком. В нем сочетается все: сексуальность и агрессивность, мягкость и напористость, изворотливость и плодовитость, неистовство и молчаливость. Данный знак находится под влиянием воинственного Марса и молодого Плутона. Первая планета объясняет превалирование у данного знака таких качеств, как вспыльчивость, настойчивость, агрессивность и воинственность. Скорпион – это знак крайностей. Так же как и Овны, он отличается очень сложным и опасным характером. Они чистые индивидуалисты и бунтари, не терпят возражений и неповиновений. В этом знаке нет гармонии или равновесия, он полон бушующих в душе страстей.Тем не менее, скорпионы очень работоспособны, умеют иерархично выстраивать план своих действий и с умом подходят к решению многих проблем. Именно под этим знаком рождаются многие мировые лидеры и роковые женщины.",
                          forecast: "С точки зрения гороскопа Скорпиона на 2022 год, есть все предпосылки испытать большие перемены как в профессиональном, так и в романтическом плане. Вы будете колебаться между крайней потребностью в независимости и страхом оставить все позади и приступить к новому проекту. Привычки успокаивают, новые вещи пугают, но не бойтесь следовать своим мечтам, особенно если это означает полное изменение вашей жизни. В 2022 году Плутон обостряет вашу интуицию, в то время как Юпитер и Нептун дают вам веру в ваши проекты и способствуют прекрасным достижениям. Удача будет сопутствовать вам, особенно в течение первых пяти месяцев года. После этого ваш прогресс будет более трудным, что может привести к тому, что вы потеряете терпение на работе. Смена должности возможна летом или в конце года. К счастью, вы сохраните свою уверенность в себе и, прежде всего, любовь не потеряет силу! Действительно, ваша личная жизнь будет в лучшем виде, но ваша профессиональная жизнь примет напряженный оборот. Ваша эволюция неопределенна, и проблемы, которые раньше стимулировали вас, в конечном итоге будут отягощать. Что касается страсти, вы всегда можете рассчитывать на своего партнера или на свои многочисленные приключения. В астрологическом прогнозе на 2022 год стимулирующие вызовы будут возбуждать амбиции и побуждать вас, но в долгосрочной перспективе они будут утомлять вас. Оставайтесь методичными и не сбивайтесь с курса!"),
            TitlesPeriods(period: .sagittarius,
                          title: "Стрелец – знак зодиака, характеристика которого подчеркивает, что его представители – это искренние, веселые, позитивные и просто очаровательные люди. Их любят родственники, друзья, просто окружающие люди, которым довелось с ними пообщаться.Благодаря своему оптимизму и огромному запасу жизненной энергии, притягивают к себе людей. Стрельцы добиваются больших успехов на работе, могут стать серьезными конкурентами для своих коллег.В характере Стрельцов присутствует черта самолюбия и эгоизма. Но развивается она отнюдь не у всех представителей данного знака. Стрельцы – прирожденные путешественники. Они любят читать, гулять, посещать различные страны. Жизнь в четырех стенах и скучная работа – не для них. Стрельцы любят компанию, предпочитают одиночеству нахождение в обществе. Они хотят и любят производить впечатление на окружающих, мечтают оставить свой след в жизни. Любят хорошо одеваться, предпочитают носить исключительно качественную и красивую одежду.",
                          forecast: "Согласно гороскопу для Стрельца, в 2022 году вам нужно будет с удвоенной силой следить за своими финансами и избегать слишком рискованных инвестиций. У вас не будет недостатка в удовлетворении, потому что ваша тяжелая работа будет вознаграждена успехом и достойными результатами. Тем не менее, вам нужно будет найти моменты, чтобы расслабиться и зарядиться энергией. На сентиментальном уровне вы испытаете моменты сильного взаимного притяжения, так что не пора ли подумать о браке? В 2022 году Сатурн будет отличным проводником для вас. Благодаря ему вы всегда помните о своих целях, даже когда кто-то пытается отвлечь вас от них. Действительно, Нептуну иногда нравится напоминать вам, что в других местах трава зеленее, но вы отказываетесь жить мечтами и иллюзиями и вместо этого сосредотачиваетесь на конкретных возможностях. Благодаря Юпитеру в Овне с 11 мая по 28 октября, ближе к концу года вы пожнете плоды успеха и признания. Для Стрельцов год в целом благоприятный, и в трудные времена вы знаете, как засучить рукава, чтобы завершить свои проекты и выполнить свои обязанности. Ваше жизнелюбие заразительно, и даже во времена низкого морального духа всегда находите способ вернуться в нужное русло. В 2022 году вы сможете заявить о себе во всех сферах жизни, но сохраняйте реалистичность и ясность в своих целях, чтобы сохранить преимущества своих достижений."),
            TitlesPeriods(period: .capricorn,
                          title: "Козерог – знак зодиака, характеристика которого позволяет считать его знаком перехода от стихии Земли к Воздуху. Знаком предводительствует Сатурн. Козероги обладают исключительно аналитическим складом ума, умеют четко ставить цели и идти к ним до победного конца. Существуют два типа Козерогов. Первый тип предстает в виде очень коварного и жестокого человека, готового идти ради достижения своей цели на самые страшные и коварные поступки. Второй тип – Козероги-проповедники. Они любят делиться с людьми своим природным умением определять важную цель. Кроме исключительно духовных советов, могут дать множество практических советов и средства для ее достижения. Козероги отличаются особой осторожность и последовательностью в делах. Они могут стать прекрасными организаторами и руководителями. Любое предложенное им дело разложат по полочкам и установят сроки его завершения. Представители данного знака заядлые консерваторы. Они уважительно относятся к семейной иерархии, где каждому соответствует определенное положение и род деятельности.",
                          forecast: "Согласно гороскопу для знака Козерог 2022 — это год метаморфоз, особенно в том, что касается физических изменений. Вы, наконец, почувствуете, что полностью контролируете свою жизнь. Воспользуйтесь плодами прошлого года, не почивая на лаврах, а продолжая упорно работать. Продолжайте расти и принимать новые вызовы, даже если они могут иногда пугать вас или заставлять вас отказываться от них. Вы можете сдерживаться в своих финансовых амбициях, но у вас достаточно идей, когда дело доходит до обогащения или укрепления ваших материальных ценностей. Юпитер побуждает вас расслабиться и придать своей жизни игривую сторону в течение первой половины года. В это время ваш приоритет — семейная жизнь и дети. В профессиональном плане вы остаетесь стойкими, хотя неожиданные события или противники могут дестабилизировать вас. Иногда вы будете останавливаться в своих финансовых целях, но никогда не останетесь без идей для заработка.Юпитер будет присутствовать в вашем гороскопе и добавит игривости вашей жизни. Ваше иногда вулканическое настроение может утомлять ваших близких. Вы отказываетесь принимать неприятные замечания и предпочитаете конфронтацию, вместо шага назад. Чтобы все исправить, постарайтесь сконцентрироваться на своих стабильных и гармоничных отношениях."),
            TitlesPeriods(period: .aquarius,
                          title: "Водолей – знак зодиака о котором астрологи говорят, как об одном из крайне противоречивый знаков зодиакального круга. Среди представителей знака Водолей встречаются как простые, так и сложные люди. Своим поведением или редкими выходками могут шокировать окружающих, при этом им это очень по душе. Но, несмотря на это, не приемлют театральности. Водолеи хотят быть всеми любимыми, играть роль руководителя или начальника, они стремятся к престижу и власти. Они любят копаться в истинах, искать суть тех или иных явлений. Встречаются Водолеи и с особой, нежной и проницательной душой. Представители знака Зодиака Водолей выглядят немного неприземленными и мечтательными существами, со странными манерами проявления чувств и эмоций. Они могут быть щедры, а также наивны, скрыты, независимы. Любой запрет будет тут же отметен. Чаще всего наоборот, требуют от людей повиновения себе.",
                          forecast: "Согласно гороскопу Водолея на 2022 год, благодаря прохождению Юпитера в вашем знаке большую часть года вы чувствуете себя оптимистично, амбициозно и позитивно. Верьте в свои возможности, и вы не будете разочарованы. Сатурн подпитывает ваши амбиции и структурирует ваши проекты, но это не значит, что вы можете принимать случайные решения, не обдумывая их, напротив, взвесите все за и против, прежде чем сделать свой выбор. Сатурн в вашем знаке позволяет вам действовать со зрелостью, мудростью и хладнокровием, даже когда Уран сеет зерна сомнения ... пришло ли время действовать или нет. В результате вы становитесь еще более решительным, когда воплощаете свои идеи в жизнь. Юпитер в Овне с 11 мая по 28 октября и снова в конце декабря благоприятствует вашему расширению. В 2022 году Сатурн по-прежнему будет сильным источником поддержки, на которую вы можете положиться. Юпитер будет помогать вам в течение года увеличивать ваш доход, развивать свои достижения и заставлять вас чувствовать себя удовлетворенным, в то время как Нептун будет стараться развенчать все иллюзии вашего величия. В этом году навыки Водолея будут улучшены, и вы узнаете, как использовать скрытые таланты в своих интересах. Короче говоря, не стесняйтесь устремляться высоко и прислушиваться к своим инстинктам, потому что вы единственный, кто знает, когда действовать. В этом году препятствий будет меньше, но, хорошо проанализировав ситуации и приложив необходимые усилия, вы сможете получить результаты, о которых всегда мечтали."),
            TitlesPeriods(period: .pisces,
                          title: "Рыбы – знака зодиака, представители которого зачастую капризны и и чересчур эмоциональны. Представители знака зодиака Рыбы часто летают в облаках, живут мечтами. Данный знак принадлежит к водной стихии. Рыбы подобно воде, плывут по течению, не замечая на своем пути преград. Рыбы могут быть очень меланхоличными личностями, часто проводящих время в одиночестве. Они не отличаются особой стойкостью характера и им довольно легко навязать свое мнение. Несмотря на все это, Рыбы являются самым доброжелательным, отзывчивым и спокойным знаком. Они очень дорожат близкими людьми и друзьями, не скупятся на помощь. Их манит все тайное и мистическое, они отличаются способностью видеть вещие сны. Рыбы станут хорошим и очень ответственным работником. При этом работать они предпочитают в одиночестве, так как не очень любят, когда их контролируют.",
                          forecast: "Согласно гороскопу на 2022 год, Юпитер и Нептун встретятся в вашем знаке зодиака Рыбы 12 апреля, что несомненно подчеркнет ваши таланты предвидения. Вы будете поражены своей ослепительной интуицией. Ваша чувствительность, гуманизм, творческое и психологическое чутье также творят чудеса. Уран открывает для вас новые двери в вашей активной жизни, вы становитесь решительнее и смелее, даже если Сатурн иногда напоминает вам о необходимой осторожности. Астрологические прогнозы 2022 года показывают, что Юпитер и Нептун будут сосредоточены на вашей способности заглядывать в будущее. Ваша чувствительность, самоотверженность, творческий и психологический талант также будут проявляться самым чудесным образом. Уран откроет для вас новые двери, и у вас хватит смелости взять все это на себя. Даже если иногда все будет не просто, ваше желание принимать новые вызовы и делать все лучше и лучше является выдающимся. Однако вам нужно быть достаточно сильным, чтобы справиться с непредвиденными событиями первого квартала, которые могут сбить вас с ног. Если вы сохраните решимость, 2022 станет вашим годом! Звезды поддержат вас, но вы должны быть уверены, что проявите настойчивость, когда наступят трудные времена."),
            
            TitlesPeriods(period: .rat, title: "About rat", forecast: ""),
            TitlesPeriods(period: .ox, title: "About ox", forecast: ""),
            TitlesPeriods(period: .tiger, title: "About tiger", forecast: ""),
            TitlesPeriods(period: .rabbit, title: "About rabbit", forecast: ""),
            TitlesPeriods(period: .dragon, title: "About dragon", forecast: ""),
            TitlesPeriods(period: .snake, title: "About snake", forecast: ""),
            TitlesPeriods(period: .horse, title: "About horse", forecast: ""),
            TitlesPeriods(period: .sheeps, title: "About shuups", forecast: ""),
            TitlesPeriods(period: .monkey, title: "About monkey", forecast: ""),
            TitlesPeriods(period: .rooster, title: "About rooster", forecast: ""),
            TitlesPeriods(period: .dog, title: "About dog", forecast: ""),
            TitlesPeriods(period: .pig, title: "About pig", forecast: ""),
            
            TitlesPeriods(period: .apple,
                          title: "Считается, что знак Яблоня наделяет человека особыми чертами: приятной, привлекательной внешностью и доброй, широкой душой. Такие люди способны очаровать с первого взгляда. Они открыты для общения, дружелюбны и любят яркие эмоции. Благодаря своему пристрастию к чтению, наукам, новым знаниям, имеют отличную эрудицию и являются интересными собеседниками. Обучаться могут на протяжении всей жизни и, познавая новое, совершенствоваться в самых разных областях деятельности. Им чужды скупость и меркантильность. Помогая другим, напрочь забывая о своих потребностях, способны поделиться последним. Это не всегда положительно сказывается на них, так как некоторые с легкостью могут воспользоваться их добротой. Впрочем, яблоня, не таит долго зла, а зачастую просто забывает о своих должниках. Это объясняется мягкостью характера и легким нравом.",
                          forecast: ""),
            TitlesPeriods(period: .fir,
                          title: "Знак Пихта наделяет своих представителей холодной, суровой красотой.Представители этого растения – интеллектуалы, занимаются научной деятельностью, умеют ценить шедевры искусства, отличаются изысканным вкусом и склонны к роскоши. Имея такие особенности, они требовательны как к себе, так и к другим, что определяет в их характере наличие снобизма и высокомерия. Жить рядом с ними довольно непросто, пихта своенравна и подвержена капризам. Кроме того, придерживаясь консервативных взглядов, не желает разделять чужое мнение. Может поэтому, такие люди, предпочитают не высказываться публично и держаться обособленно. Благодаря железному самообладанию, пихта может оказаться единственным, кто не растеряется в критической или сложной ситуации, а тщательный анализ позволит принять нужное решение. Это качество очень ценят окружающие ее люди, ведь несмотря на свою кажущуюся холодность, рассчитывать на ее помощь и поддержку можно с уверенностью.",
                          forecast: ""),
            TitlesPeriods(period: .elm,
                          title: "Представители знака Вяз выглядят очень привлекательно в глазах окружающих их людей.При своей привлекательной внешности, эти люди не склонны к самолюбованию. Больше всего они ценят комфорт, чем гонку за ультрамодными новинками, поэтому не слишком следят за гардеробом. Тем более что им так тяжело расставаться с добрым прошлым, будь то одежда, отношения или работа. Несмотря на спокойный, доброжелательный нрав, эти люди могут своими нотациями довести до ручки. Наверное, сказываются задатки лидера вкупе с природной ответственностью, обязательностью и требовательностью. За крепкой физической формой часто скрываются проблемы со здоровьем, а самоуверенность иногда сменяется страхом разочарования. Зато они умеют доверять людям и сами способны быть преданными. Мужчины обычно трудолюбивы, рациональны и практичны. Отношения строят на больших чувствах, уделяют много времени возлюбленной, взамен требуют того же. Женщины, родившиеся под покровительством вяза, имеют положительную энергетику, любят быть в центре внимания, излучают оптимизм и внутреннюю силу.",
                          forecast: ""),
            TitlesPeriods(period: .cypress,
                          title: "Кипарис характеризует как самый верный и преданный знак.Из всего разнообразия жизненных благ он выбирает счастье, которое заключается в дружном окружении, теплом и уютном доме, шумных посиделках в кругу большой семьи. Характером наделен сильным, уравновешенным. Может проявить как строгость или грубость, так и тепло открытой души. Поэтому первичное впечатление о нем, как о человеке грубом и немного неотесанном, при дальнейшем знакомстве, меняется в лучшую сторону. Имеет свойство быстро приспосабливаться в любых жизненных условиях, тем не менее, старается избегать трудностей на пути. Потому как ценит спокойный и размеренный образ жизни, не переносит конфликтов. Временами подвержен мечтательным и задумчивым состояниям, при которых любит уединиться и насладиться тишиной. Природа всегда манит и вдохновляет его натуру, а одиночные прогулки на свежем воздухе восстанавливают силы. Кипарис умеет быть благодарным в ответ на хорошее к нему отношение, очень ценит настоящую дружбу и дорожит отношениями.",
                          forecast: ""),
            TitlesPeriods(period: .poplar,
                          title: "Знак Тополь наделяет своих представителей особыми чертами.Природа одарила этих людей красивыми внешними данными, статностью и привлекательностью, о которой они заботятся на протяжении всей жизни. Иногда, мысли о проходящей молодости загоняют их в депрессивное состояние, ведь, по их мнению, именно красота делает из них счастливых и благополучных людей. Тополям свойственно чувство мнительности, они часто подвергаются тревожным расстройствам. В мыслях – непостоянны. Наверное, поэтому предпочитают проводить время в веселых компаниях, где можно надолго зарядиться позитивом. Очень чувствительны к словам и критике, не терпят ограничения в свободе и навязыванию чужого мнения. Умеют дружить и беречь такие отношения, так как к выбору друзей относятся сверх осмотрительно. Именно друзья и близкие помогают им справиться в моменты душевных страданий. В остальном, тополь невозможно согнуть под тяжелыми жизненными обстоятельствами. Они стойко и с достоинством переносят невзгоды, обладают проницательностью и аналитическим складом ума.",
                          forecast: ""),
            TitlesPeriods(period: .cedar,
                          title: "Знак Кедр наделяет человека в целом позитивными и яркими качествами. Это хорошо сложенные, с крепким, цветущим здоровьем и ясным разумом, люди. Жизнь для них, как искрящаяся на солнце горная река, полна перепадов, разных глубин и немыслимых сюрпризов. Причем неожиданности любят преподносить они сами, им нравится быть непредсказуемыми, в хорошем смысле. Они умеют доставить людям положительные эмоции. Кедр – любит комфорт и порядок, но не зацикливается на этом, хорошо чувствует себя в любой обстановке, если есть доступ к творческой деятельности и искусству. Ему тяжело находиться на одном месте, он полон энергии и новых идей. Окружение любит его за ценные качества – решительность, смелость, благородство, добродушие и оптимизм. Хотя иногда нотки самовлюбленности и гордости проявляют себя, кедр не способен смотреть свысока, он просто доволен собой. Жажда приключений делает их жизнь интересной и насыщенной, а любимое дело поглощает целиком на долгие годы. Отрицательных качеств практически нет, разве что не воспринимают шутки в свою сторону и не способны посмеяться над собой. Могут поддаваться чужому влиянию.",
                          forecast: ""),
            TitlesPeriods(period: .pine,
                          title: "Люди, рожденные под покровительством знака Сосна, с раннего возраста проявляют творческие таланты, любят знать все наперед и планировать свою жизнь.Им тяжело отказаться от своих замыслов, поэтому задавшись целью, упорно стараются ее достичь, несмотря на преграды. Успехов добиваются самостоятельно, полностью отдавшись любимому делу. Не терпят давления со стороны окружающих. Ограничения в свободе переживают болезненно, так же как и критику в свой адрес. У этих людей прекрасная интуиция, им свойственно анализировать любую ситуацию. Редко поддаются панике, стараясь сохранить спокойствие и разум. Они приветливы, гостеприимны, приятны в общении, но не всегда умеют быть открыты, внутренние переживания часто держат при себе. Своим обаянием быстро располагают к себе. Женщины этого знака хороши собой, о чем прекрасно знают, и умело пользуются этим. Главное в их жизни – иметь свой, личный уголок, в котором они окружат себя прелестными вещичками. Свой дом, сосны любят и стараются, чтобы всем было там комфортно. А вот мужчины, главным приоритетом ставят успешную карьеру и собственные достижения. Желание всегда быть первым дает хорошие результаты, они достигают задуманных вершин.",
                          forecast: ""),
            TitlesPeriods(period: .willow,
                          title: "Знак Ива связывают с сильными качествами человека.Ива, с виду трепетное и нежное дерево, тем не менее, имеет цепкие, сильные корни, благодаря которым даже сильным ветрам ее не сломить. Люди, чьим покровителем она является, наделены такими же особенностями. Несмотря на внешнюю хрупкость, таинственность и задумчивость, они достаточно самоуверенны и высокомерны. Большие любители помечтать и уйти от реальности не терпят вмешательства в свою жизнь. Им нравится быть наедине со своими мыслями.Представляясь в обществе слабыми, таким образом пытаются манипулировать окружением ожидая поддержки. Они умеют быть и психологами, и актерами. С другой стороны, они чувствительны и подвержены романтичным настроениям. В их планы не входит контроль и управление другими людьми, поэтому они не бывают грубыми и требовательными. Просто хорошо знают свои потребности и адекватно оценивают свои возможности, поэтому не считают нужным влиять на чье-то мнение или доказывать свое.",
                          forecast: ""),
            TitlesPeriods(period: .linder,
                          title: "Липа ассоциируется с природным обаянием.В окружении представителей этого знака, как правило, нет человека, который бы оставался равнодушным по отношению к ним. За этой особенностью скрывается умение слушать и понимать человека, дарить хорошее настроение и позитивный настрой. Они умны, находчивы, умеют принимать решения. Но наряду с этими качествами, могут не испытывать полной радости от жизни. Им хочется чего-то большего, поэтому они всегда находятся в поиске, часто не оценив по достоинству то, что уже имеют.Невеселый жизненный настрой пытаются разбавить врожденным чувством юмора и шумным общением с любимыми людьми. Для обоих представителей пола свойственны неразумные поступки в юности и молодости, жажда приключений, развязное поведение. Позже это проходит, и тогда самое главное для них – это семья, близкие, хорошие друзья и теплая атмосфера.",
                          forecast: ""),
            TitlesPeriods(period: .oak,
                          title: "С давних времен людей, рожденных под знаком Дуб считали волевыми и сильными духом личностями.Могучее дерево наделяет их идентичными чертами характера и внешности. Они красивы и статны, отличаются превосходным здоровьем, о котором умеют заботиться. Жесткость характера выражается в целеустремленности, уверенности в своих действиях, ответственности и благородства. Они борцы за справедливость, всегда отстаивают свое мнение, но и умеют выслушать чужое.Хорошей чертой является неприязнь к сплетням, они не допустят их в свой адрес и не станут обсуждать жизнь другого человека. В этом случае могут быть достаточно грубыми и резкими. Их интересует самодостаточность, свои цели и планы, но при обстоятельствах окажут помощь абсолютно бескорыстно. Консерватизм – неотделимое свойство этих людей. Они ценят стабильность в работе, близком окружении, обстановке, не любят изменений. Предпочитают совершать действия без лишних рассуждений и сомнений.",
                          forecast: ""),
            TitlesPeriods(period: .hazel,
                          title: "Знак Орешник связывают с разносторонними проявлением качеств человека. Представителям этого знака свойственно сочетать в своем характере массу противоречий. Являясь от природы энергичными, талантливыми и обаятельными, они могут приносить и счастье, и страдания своим близким. У них широкая душа и тонкое восприятие мира. Любовь к своим близким делает их щедрыми на благородные поступки, они остро переживают боль родного человека. Умеют быть очень терпеливыми и сдержанными. В то же время, способны на эмоциональные всплески, от которых страдают любящие его люди. Не имея золотой середины, они могут одарить любовью и нежностью, а вскоре устроить бурный скандал. С ними интересно общаться, они умны и эрудированны, наделены чувством юмора, который может граничить со злым сарказмом. Иногда любят похулиганить, придумывая оригинальные розыгрыши. Знания даются им легко, но не всегда применяются. И вообще, орешник может все бросить на полпути, если утратит интерес к делу или человеку.",
                          forecast: ""),
            TitlesPeriods(period: .rowan,
                          title: "Рябина всегда стремится к гармонии. Люди этого знака обладают массой достоинств, но при этом не высокомерны. Они легко находят подход к человеку, общаться с ними приятно, им всегда есть чем удивить. Внешностью обладают привлекательной, умеют следить за стилем и быть элегантными. Всегда обходительные, обезоруживают своей искренней улыбкой. Редко когда выходят из себя благодаря самоконтролю и воспитанию. Добиваются поставленных целей, но не в ущерб своим близким, ради которых готовы на многое. Любят доставлять радость людям, умеют сочувствовать и помогать.Мужчины этого знака справедливые, очень ответственные и честные. Полагаясь на них, можно не переживать – они всегда доведут дело до конца. Им свойственно мечтать о независимой, самостоятельной жизни, но низкая самооценка и чувство долга не позволяют оставлять близких. Рябина-женщина великолепная хозяйка, заботливая жена и мама. Счастье для нее – в хорошей домашней атмосфере, красивом интерьере, заботах и хлопотах по дому. Не жалуясь на усталость, она все успевает и очень довольна результатами. Редко кому из женщин удается сочетать мягкость, добродушие и требовательность, как к себе, так и к окружению.",
                          forecast: ""),
            TitlesPeriods(period: .maple,
                          title: "Знак Клён наделяет своих представителей непреодолимым желанием жить ярко и интересно. Поэтому у них всегда множество идей и планов, которые они с успехом воплощают. Их энергии хватает надолго, они с радостью приобретают новые увлечения и знакомства. Дома им не сидится. Активный образ жизни выражается в занятиях спортом, увлекательных поездках, участии в проектах. Следят за своим стилем и внешним видом, и предпочтение отдают людям, которые также умеют себя показать. Захлестнувшие эмоции могут спровоцировать их на принятие спонтанного решения, о котором они не станут жалеть в случае неудачи. Потому, как обычно им везет, а трудностей они не пугаются. Любят занимать лидирующее положение, люди им доверяют и идут за ними. Взяв на себя ответственность, обязательно исполняют обещанное, ценят честность и справедливость. Перемены в жизни воспринимают легко, быстро поворачивая ситуацию в нужное русло. Унынию не поддаются, считая, что впереди их ожидают только лучшие моменты. Бывают остры на язык и циничны, но не придают значения обидам посторонних людей, также, как и не интересуются их мнением.",
                          forecast: ""),
            TitlesPeriods(period: .nut,
                          title: "Представителей знака Грецкий Орех или просто Орех (гороскоп друидов) – это свободолюбивые и независимые люди, их нельзя заставить подчиняться. Они всегда предпочитают рассчитывать только на собственные силы. Свои действия планируют заранее, всегда имея в запасе новую стратегию. Склонны к агрессии. В общении проявляют эгоизм. Легко разрывают отношения, в том числе и дружеские, зная, что на смену им придут новые. Благодаря острому уму и решительности быстро справляются с проблемами, за что ценятся в коллективе. Орех любит показать себя, следит за модой, хорошо одевается и старается быть изысканным. Карьера для него много значит, и он постоянно совершенствуется для ее достижения. Наряду с негативными качествами умеет быть радушным и гостеприимным. Близкие люди получают от него тепло, поддержку, заботу, но и им иногда случается быть жертвой импульсивности ореха. Самостоятельная жизнь научила его не бояться трудностей, но и не идти на уступки. Поэтому он редко считается с чужим мнением и предпочитает держаться обособленно, наживая при этом врагов.",
                          forecast: ""),
            TitlesPeriods(period: .jasmine,
                          title: "Жасмин с незапамятных времен связывали с характерной легкостью и воздушностью, веселым нравом и жизнелюбием. У представителей этого знака много друзей, которые любят их за верность и справедливость. Свои обязанности они выполняют, но не всегда исходя из собственных желаний, так как немного ленивы. Любые рамки и ограничения заставляют их злиться и отчаиваться, не отличаясь сильным характером, им приходиться смириться. Карьера редко затягивает их в свои сети, им не свойственно тратить время на достижения. Работа для них скорее удовольствие и развлечение, хотя зарабатывать получается довольно хорошо. Начальство их просто обожает, они способны принести в коллектив гармонию и положительный настрой, незаменимы в дипломатическом отношении, воспитаны и интеллигентны. К нововведениям изначально относятся с подозрением, но подключившись, всегда находят в них что-то хорошее. Обладая чувствительной и ранимой душой, они могут скрывать это за маской беззаботности и веселья. Страдать умеют, но быстро восстанавливаются. Любят приводить себя и свое жилье в порядок. Им безумно нравится домашний уют, чистота и вкусная еда.",
                          forecast: ""),
            TitlesPeriods(period: .chestnut,
                          title: "Каштан связывали с очень важными жизненными принципами – справедливостью, благородством и искренностью. Эти чувства настолько обострены, что он не потерпит в своем окружении людей не соответствующих его моральным нормам. Обладая привлекательной внешностью и обаянием, никогда не пользуется этим, просто потому, что не замечает и не признает этого. Часто из-за неуверенности и низкой самооценки. Он прямолинеен, не способен на хитрость и манипуляции, что иногда мешает ему в жизни. Достаточно консервативен. Иногда вызывает непонимание и снисходительные усмешки в свой адрес. Несмотря на оптимизм, тяжело переживает неудачи, еще больше теряя уверенность. Но поддержка близкого человека всегда возвращает его к жизни, наполняя новой энергией. В его характере достаточно смелости и отзывчивости. Поэтому он всегда придет на помощь, не раздумывая. Дружбу ценит больше всего, хотя редко с кем может быть открытым. С приятелями и коллегами общителен, весел и дружелюбен.",
                          forecast: ""),
            TitlesPeriods(period: .ash,
                          title: "Ясень представляет крайне неординарным знаком. При своем независимом и свободолюбивом характере нуждается в искренней заботе и тепле. Причем всегда будет требовать играть только по своим правилам. Не любит ошибаться, поэтому предпочитает заранее все предусмотреть. Достижение своих целей ставит во главу угла, стремится к успеху и благосостоянию. Трудности и жизненные проблемы вызывают в нем презрительную усмешку. Понимают его немногие. Эгоистичное стремление делать все, как хочется, шокирует его окружение, тем не менее, все к чему он идет, оборачивается успехом. Ясень имеет хорошую интуицию и склонен считать себя прорицателем. Любит поиграть с судьбой, проверяя свои способности. В общении он открыт и свободен, любит производить на людей впечатление своим остроумием и эрудицией, иногда фантазирует для яркости. Но не является злым или жадным человеком, всегда придет на помощь.",
                          forecast: ""),
            TitlesPeriods(period: .hornbeam,
                          title: "Знак Граб друиды связывали с весьма противоречивыми качествами человеческой души. Этих людей не слишком волнуют проблемы окружающих, из-за чего они кажутся равнодушными и холодными. Отчасти так и есть, их больше интересует собственное благополучие. Немного тщеславен, грезит о признании, поощрениях и наградах, но не слишком инициативен. Чувство долга заставляет его быть хорошим исполнителем, отступать от правил не в его характере. Поэтому его знают, как надежного и ответственного человека. Как партнер – он незаменим, его выдержка и железная воля помогают решать сложные и запутанные дела. Важным аспектом его жизни является хорошая репутация, и он подтверждает это своими поступками. Может быть слишком придирчивым и занудным как к себе, так и остальным. В молодости очень привлекательны и притягивают взгляды. Со временем, внешнее очарование проходит, но граб компенсирует это превосходным чувством стиля и умением вызвать к себе интерес.",
                          forecast: ""),
            TitlesPeriods(period: .figs,
                          title: "Инжир – это знак, который наделяет своих подопечных ранимой и доброй душой.Для них комфорт – это тихое, спокойное и уютное место, где их любят и оберегают. В целом, положительный знак, если не считать склонности к лени. С этим пороком они борются всю жизнь, и с успехом выходят победителями. Им больше импонирует руководить, чем быть в подчинении, поэтому они деятельны, умны и оригинальны. Из-за склонности относиться снисходительно к людям, попадают в трудные ситуации, которые выбивают их из колеи. Со временем они приобретают навык избегать неприятных людей и обществ. Инжир не может долго находиться в негативной атмосфере, от этого его энергия гаснет. Потому они так ценят тепло и радость, которая исходит от близких и родных людей. Мужчины часто предпочитают материальные ценности, а женщины, наоборот, духовные. Но в остальном ими управляет желание иметь большой дом, много добрых друзей и счастье близких.",
                          forecast: ""),
            TitlesPeriods(period: .birch,
                          title: "Береза, наверное, самый положительный знак по древесному гороскопу. Береза изящна, приветлива и воспитана. Мягкий характер граничит с трудолюбием, упорством и умением приспосабливаться. Лишена капризов, и не склонна к самолюбованию – береза живет и наслаждается жизнью. Любит тихий уголок для своих занятий творчеством или другой, выбранной деятельности. Среди них много людей искусства, талантливых и разумных. Благодаря логике и изобретательности приводит в исполнение любые замыслы, имеет дар убеждения, очень приятна в общении. Для счастья ей хватает дома в деревне, городская суета угнетает и забирает ее силы, хотя умеет создать комфорт в любом месте. Очень любит своих друзей, родных и близких, с радостью уделяет им время, и они ей платят тем же.",
                          forecast: ""),
            TitlesPeriods(period: .olive,
                          title: "Маслина всегда сохраняют равновесие и излучают спокойствие. Это обусловлено полным отсутствием враждебности и негативным отношением к другим людям. Душевный комфорт для них главнее, чем споры и доказывание правоты. Они интеллигентны, деликатны и отличаются здравомыслием. Не бросят в трудную минуту, так как имеют доброе и отзывчивое сердце. Еще никому не удавалось использовать эти качества маслин для своей выгоды, ведь они не являются простаками. Знаниям в своей жизни они отводят важную роль, любят учиться и открывать новые возможности. Часто имеют несколько образований или ученую степень. Все, что они делают в жизни, проходит под девизом – будь спокоен, будь счастлив. Очень ценят уют и хорошее общение, заряжают позитивом. Стараются на все смотреть с улыбкой и не оглядываться на неудачи. Иногда сдержанность и вежливость расценивается, как равнодушие и безучастность. На самом деле, маслины очень сердечны и интересны, но не всем показывают свои эмоции.",
                          forecast: ""),
            TitlesPeriods(period: .beech,
                          title: "Люди, родившиеся под покровительством знака Бук, отличаются целеустремленностью и практичностью. Нравом обладают спокойным, твердо расставляя приоритеты. Благоразумие никогда не покидает их, поэтому все, к чему они стремятся, дает положительные результаты. Предпочитая постоянный и проверенный годами круг общения, очень осторожно допускают в него новые знакомства, хотя в отношениях легки, любят хороший юмор и всегда готовы оказать посильную помощь. Присуще им и лидерские качества. Организация и четко выстроенная структура – их конек. Окружающие люди доверяют им, относятся с уважением, ценят в них честность и порядочность. Кроме того, они способны быстро реагировать на обстоятельства, находить альтернативу и оборачивать ситуацию в свою пользу. Природа наградила их отличным здоровьем и привлекательной внешностью, поэтому даже на склоне лет, выглядят они потрясающе и редко жалуются на свое состояние. Как мужчины, так и женщины, родившиеся под знаком Бука, являются хранителями семейного очага. Стремятся к гармонии, уюту и счастливой атмосфере в доме. Они прекрасные родители, заботливые и в меру строгие. В силу своего характера могут быть требовательными, но объективными. Щедрые на похвалу и подарки.",
                          forecast: "")
        ]
    }
}


// MARK - массив цвета фона в зависимости от типа стиля и типа гороскопа

struct HoroscopeStyle {
    let horoscope: Horoscope
    let style: Style
    let background: UIColor
    
    static func getHoroscopeStyle() -> [HoroscopeStyle] {
        
        let colorDefault = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 1)
        let colorGray = UIColor(displayP3Red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5)
        let colorZodiac = UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 0.3)
        let colorDruid = UIColor(displayP3Red: 0, green: 1, blue: 0, alpha: 0.3)
        let colorChina = UIColor(displayP3Red: 1, green: 0, blue: 0, alpha: 0.3)
        
        return [
            HoroscopeStyle(horoscope: .zodiac, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .zodiac, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .zodiac, style: .color, background: colorZodiac),
            
            HoroscopeStyle(horoscope: .druid, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .druid, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .druid, style: .color, background: colorDruid),
            
            HoroscopeStyle(horoscope: .china, style: .byDefault, background: colorDefault),
            HoroscopeStyle(horoscope: .china, style: .gray, background: colorGray),
            HoroscopeStyle(horoscope: .china, style: .color, background: colorChina)
        ]
    }
}

// MARK -  о разработчиках
 
struct Developer {
    let names: String
    let details: String
    let image: String
    static func getDeveloper() -> [Developer]{
        [
            Developer(names: "Sergey ", details: "Team Leader", image: "sergey"),
            Developer(names: "Alexander Panin", details: "Developer", image: "alexander")
        ]
    }
}

// MARK - перечисления типа гороскопов, типа стиля и периодов гороскопов

enum Horoscope: String {
    
    case zodiac =
            "Познавая и изучая знаки зодиака, прежде всего стоит понимать, что их характеристика является лишь вариантом астрологической интерпритации, содержит обобщенные данные и описания, точность которых несколько ниже чем в индивидуальных гороскопах или натальных картах. В современной зодиакальной системе существует 12 знаков, которые всем прекрасно знакомы. Эти знаки соответствуют 12 созвездиям, в которых находится солнце в определенное время года. Они влияют на характер и судьбу человека, его отношения с окружающим его миром."
    
    case druid =
            "Гороскоп друидов по дате рождения, который имеет и другие названия, такие как галльский, кельтский и древесный гороскоп, ведет свое начало с времен, когда такое традиционное в наши дни понятие как «астрология» еще даже не зародилось. Какое дерево по гороскопу друидов является вашим знаком определить достаточно просто, несмотря на то, что в данном гороскопе 22 знака-символа, 18 из которых в течение года имеют по два периода активности, и 4 знака, связанные с днями солнцестояния и равноденствия, и имеющие в году по одному периоду своей активности. Каждый из символов гороскопа ассоциируется с определенным деревом."
    
    case china =
            "About of Horoscope Chine"
}

enum Style {
    case byDefault, gray, color
}

enum Period{
    case aries, taurus, gemini, cancer, leo, virgo,
         libra, scorpio, sagittarius, capricorn, aquarius, pisces,
    
         rat, ox, tiger, rabbit, dragon, snake,
         horse, sheeps, monkey, rooster, dog, pig,
         
         apple, fir, elm, cypress, poplar, cedar,
         pine, willow, linder, oak, hazel, rowan,
         maple, nut, jasmine, chestnut, ash, hornbeam,
         figs, birch, olive, beech
}



