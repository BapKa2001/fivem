local Translations = {
    notifications = {
        ["char_deleted"] = "Ký tự đã bị xóa!",
        ["deleted_other_char"] = "Bạn đã xóa thành công ký tự có id công dân %{citizenid}.",
        ["forgot_citizenid"] = "Bạn quên nhập id công dân!",
    },

    commands = {
        -- /deletechar
        ["deletechar_description"] = "Xóa nhân vật của người chơi khác",
        ["citizenid"] = "ID công dân",
        ["citizenid_help"] = "ID công dân của nhân vật bạn muốn xóa",

        -- /logout
        ["logout_description"] = "Đăng xuất nhân vật (Chỉ dành cho quản trị viên)",

        -- /closeNUI
        ["closeNUI_description"] = "Đóng nhiều NUI"
    },

    misc = {
        ["droppedplayer"] = "Bạn đã ngắt kết nối khỏi QBCore"
    },

    ui = {
        -- Main
        characters_header = "Nhân vật của tôi",
        emptyslot = "Chỗ trống",
        play_button = "Chơi",
        create_button = "Tạo nhân vật",
        delete_button = "Xóa ký tự",

        -- Character Information
        charinfo_header = "Thông tin nhân vật",
        charinfo_description = "Chọn một ô ký tự để xem tất cả thông tin về nhân vật của bạn.",
        name = "Tên",
        male = "Nam giới",
        female = "Nữ giới",
        firstname = "Tên đầu tiên",
        lastname = "Họ",
        nationality = "Quốc tịch",
        gender = "Giới tính",
        birthdate = "Ngày sinh",
        job = "Công việc",
        jobgrade = "Cấp bậc công việc",
        cash = "Tiền mặt",
        bank = "Ngân hàng",
        phonenumber = "Số điện thoại",
        accountnumber = "Số tài khoản",

        chardel_header = "Đăng ký nhân vật",

        -- Delete character
        deletechar_header = "Xóa ký tự",
        deletechar_description = "Bạn có chắc chắn muốn xóa nhân vật của mình không?",

        -- Buttons
        cancel = "Hủy bỏ",
        confirm = "Xác nhận",

        -- Loading Text
        retrieving_playerdata = "Truy xuất dữ liệu người chơi",
        validating_playerdata = "Xác thực dữ liệu người chơi",
        retrieving_characters = "Truy xuất ký tự",
        validating_characters = "Xác thực ký tự",

        -- Notifications
        ran_into_issue = "Chúng tôi gặp phải một vấn đề",
        profanity = "Có vẻ như bạn đang cố gắng sử dụng một số từ ngữ tục tĩu/xấu trong tên hoặc quốc tịch của mình!",
        forgotten_field = "Có vẻ như bạn đã quên nhập một hoặc nhiều trường!"
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
