local Translations = {
    notify = {
        ydhk = 'Bạn không có chìa khóa xe này.',
        nonear = 'Không có ai ở gần để giao chìa khóa cho',
        vlock = 'Xe bị khóa!',
        vunlock = 'Đã mở khóa xe!',
        vlockpick = 'Bạn đã mở được khóa cửa!',
        fvlockpick = 'Bạn không tìm thấy chìa khóa và cảm thấy thất vọng.',
        vgkeys = 'Bạn giao chìa khóaBạn giao chìa khóa.',
        vgetkeys = 'Bạn nhận được chìa khóa xe!',
        fpid = 'Điền vào các đối số ID người chơi và Tấm',
        cjackfail = 'Cướp xe không thành công!',
        vehclose = 'Không có phương tiện nào ở gần!',
    },
    progress = {
        takekeys = 'Lấy chìa khóa từ cơ thể...',
        hskeys = 'Tìm kiếm chìa khóa xe...',
        acjack = 'Cố gắng cướp xe...',
    },
    info = {
        skeys = '~g~[H]~w~ -Tìm kiếm chìa khóa',
        tlock = 'Chuyển đổi khóa xe',
        palert = 'Hành vi trộm xe đang diễn ra. Kiểu: ',
        engine = 'Chuyển đổi công cụ',
    },
    addcom = {
        givekeys = 'Bàn giao chìa khóa cho ai đó. Nếu không có CMND thì đưa cho người gần nhất hoặc mọi người trên xe.',
        givekeys_id = 'id',
        givekeys_id_help = 'ID người chơi',
        addkeys = 'Thêm chìa khóa xe cho ai đó.',
        addkeys_id = 'id',
        addkeys_id_help = 'ID người chơi',
        addkeys_plate = 'đĩa',
        addkeys_plate_help = 'đĩa',
        rkeys = 'Rút chìa khóa xe cho ai đó.',
        rkeys_id = 'id',
        rkeys_id_help = 'ID người chơi',
        rkeys_plate = 'đĩa',
        rkeys_plate_help = 'đĩa',
    }

}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
