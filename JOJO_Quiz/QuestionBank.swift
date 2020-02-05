//
//  QuestionBank.swift
//  JOJO_Quiz
//
//  Created by 蕭聿莘 on 2020/1/31.
//  Copyright © 2020 Kazuku. All rights reserved.
//

import Foundation

class QuestionBank {
    var list = [Question]()
    init() {
        list.append(Question(image: "Jonathan Joestar01", text: "歷代主角唯一的紳士，一切傳說的開始，最後跟宿敵合為一體。身高：195cm。", choice01: "迪奧·布朗度", choice02: "史比特瓦根", choice03: "喬納森·喬斯達", choice04: "喬治·喬斯達一世", answer:3))
        
        list.append(Question(image: "Joseph Joestar01", text: "歷代主角中最長壽，人生經歷九次交通事故，男扮女裝，你下一句要說的是...", choice01: "喬瑟夫·喬斯達", choice02: "艾西迪西", choice03: "西撒·A·齊貝林", choice04: "卡茲", answer:1))
        
        list.append(Question(image: "Kujo Jotaro01", text: "水瓶座，招牌技能是伴隨喔啦喔啦的連打，海洋生物學家，替身名字來自塔羅牌星星。", choice01: "穆罕默德·阿布德爾", choice02: "花京院典明", choice03: "波魯納雷夫", choice04: "空條承太郎", answer:4))
        
        list.append(Question(image: "Josuke01", text: "治癒系，看重自己的髮型，每當有人嘲諷時就會十分憤怒，害怕爬蟲類，私生子。", choice01: "岸邊露伴", choice02: "東方仗助", choice03: "虹村億泰", choice04: "廣瀨康一", answer:2))
        
        list.append(Question(image: "Giorno Giovanna01", text: "夢想是成為流氓巨星，无駄无駄无駄！生父有兩名，瓢蟲，對他發對替身能力都會無效化。", choice01: "布加拉提", choice02: "喬魯諾·喬巴拿", choice03: "阿帕基", choice04: "福葛", answer:2))
        
        list.append(Question(image: "Jolyne Cujoh01", text: "象徵物是蝴蝶，當過飆車族，FE40536，混血兒，唯一女性的JOJO。", choice01: "天氣預報", choice02: "安那蘇", choice03: "空條徐倫", choice04: "普奇", answer:3))
        
        list.append(Question(image: "Johnny01", text: "16歲的馬術冠軍，負數變為零，替身能力用自己的指甲高速迴轉，像子彈般發射。", choice01: "迪亞哥·布蘭度", choice02: "華尼·瓦倫泰", choice03: "傑洛·齊貝林", choice04: "喬尼·喬斯達", answer:4))
        
        list.append(Question(image: "Higashikata Josuke01", text: "有四顆眼瞳，兩個舌頭，四顆蛋蛋，喪失記憶的謎之青年，後宮最多的JOJO。", choice01: "東方定助", choice02: "東方常秀", choice03: "東方劍", choice04: "東方憲助", answer:1))
        
        list.append(Question(image: "jojo01", text: "地產大亨，人生的贏家，老東西，你的替身最沒用了，唯一沒有死亡的JOJO。", choice01: "伊奇", choice02: "音石明", choice03: "荷爾·荷斯", choice04: "喬瑟夫·喬斯達", answer:4))
        
        list.append(Question(image: "Dio1", text: "惡人的救世主，長生不老，我不做人了JOJO，无駄无駄无駄！替身名世界出自塔羅牌。", choice01: "卡茲", choice02: "吉良吉影", choice03: "迪奧·布朗度", choice04: "迪亞波羅", answer:3))
    }
}
