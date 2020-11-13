class Category < ApplicationRecord
  self.data = [
    { id: 1, type: '___' },
    { id: 2, type: '生活に関するroutine: 衣類・化粧に関して' },
    { id: 3, type: '生活に関するroutine: 食べ物・飲み物に関して' },
    { id: 4, type: '生活に関するroutine: 住まいのお手入れに関して' },
    { id: 5, type: '鍛えるためのroutine: 心を鍛える' },
    { id: 6, type: '鍛えるためのroutine: 技を鍛える' },
    { id: 7, type: '鍛えるためのroutine: 体を鍛える' }
  ]
end
