class Timeframe < ActiveHash::Base
  self.data = [
    { id: 1, type: '___' },
    { id: 2, type: '平日: 朝方' },
    { id: 3, type: '平日: 昼時' },
    { id: 4, type: '平日: 夕方' },
    { id: 5, type: '平日: 夜中' },
    { id: 6, type: '休日: 朝方' },
    { id: 7, type: '休日: 昼時' },
    { id: 8, type: '休日: 夕方' },
    { id: 9, type: '休日: 夜中' },
    { id: 10, type: '特に決まっていない' }
  ]

end
