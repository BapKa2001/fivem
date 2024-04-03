local Translations = {
    ui = {
        last_location = "Vị trí cuối cùng",
        confirm = "Xác nhận",
        where_would_you_like_to_start = "Bạn muốn bắt đầu từ đâu?",
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
