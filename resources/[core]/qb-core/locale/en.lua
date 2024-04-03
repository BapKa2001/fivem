local Translations = {
    error = {
        not_online                  = 'người chơi đã onlne',
        wrong_format                = 'Định dạng không chính xác',
        missing_args                = 'Không phải mọi đối số đều được nhập (x, y, z)',
        missing_args2               = 'Tất cả các đối số phải được điền!',
        no_access                   = 'Không có quyền truy cập vào lệnh này',
        company_too_poor            = 'Chủ của bạn bị phá sản',
        item_not_exist              = 'Mục không tồn tại',
        too_heavy                   = 'Hàng tồn kho quá đầy',
        location_not_exist          = 'Vị trí không tồn tại',
        duplicate_license           = '[QBCORE] - Đã tìm thấy giấy phép Rockstar trùng lặp',
        no_valid_license            = '[QBCORE] - Không tìm thấy giấy phép Rockstar hợp lệ',
        not_whitelisted             = '[QBCORE] - Bạn không có trong danh sách trắng của máy chủ này',
        server_already_open         = 'Máy chủ đã mở',
        server_already_closed       = 'Máy chủ đã bị đóng',
        no_permission               = 'Bạn không có quyền thực hiện việc này..',
        no_waypoint                 = 'Không có điểm tham chiếu.',
        tp_error                    = 'Lỗi khi dịch chuyển tức thời.',
        connecting_database_error   = '[QBCORE] - Đã xảy ra lỗi cơ sở dữ liệu khi kết nối với máy chủ. (Máy chủ SQL có bật không?)',
        connecting_database_timeout = '[QBCORE] - Kết nối với cơ sở dữ liệu đã hết thời gian chờ. (Máy chủ SQL có bật không?)',
    },
    success = {
        server_opened = 'Máy chủ đã được mở',
        server_closed = 'Máy chủ đã bị đóng',
        teleported_waypoint = 'Dịch chuyển đến Waypoint.',
    },
    info = {
        received_paycheck = 'Bạn đã nhận được tiền lương $%{value}',
        job_info = 'Công việc: %{value} | Lớp: %{value2} | Nghĩa vụ: %{value3}',
        gang_info = 'Băng nhóm: %{value} | Lớp: %{value2}',
        on_duty = 'Bây giờ bạn đang duty!',
        off_duty = 'Bây giờ bạn đã off duty!',
        checking_ban = 'Xin chào %s. Chúng tôi đang kiểm tra xem bạn có bị cấm không.',
        join_server = 'Chào mừng %s đến với {City Of Heaven}.',
        checking_whitelisted = 'Xin chào %s. Chúng tôi đang kiểm tra trợ cấp của bạn.',
        exploit_banned = 'Bạn đã bị cấm vì gian lận. Kiểm tra Discord của chúng tôi để biết thêm thông tin: %{discord}',
        exploit_dropped = 'Bạn đã bị đá vì lợi dụng',
    },
    command = {
        tp = {
            help = 'TP To Player hoặc Coords (Chỉ dành cho quản trị viên)',
            params = {
                x = { name = 'id/x', help = 'ID của người chơi hoặc vị trí X' },
                y = { name = 'y', help = 'Y chức vụ' },
                z = { name = 'z', help = 'Z chức vụ' },
            },
        },
        tpm = { help = 'TP To Marker (Admin Only)' },
        togglepvp = { help = 'Chuyển đổi PVP trên máy chủ (Admin Only)' },
        addpermission = {
            help = 'Cấp quyền cho người chơi (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        removepermission = {
            help = 'Remove Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        openserver = { help = 'Mở máy chủ cho mọi người(Admin Only)' },
        closeserver = {
            help = 'Close the server for people without permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Reason for closing (optional)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        dvall = { help = 'Delete All Vehicles (Admin Only)' },
        dvp = { help = 'Delete All Peds (Admin Only)' },
        dvo = { help = 'Delete All Objects (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        job = { help = 'Check Your Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                job = { name = 'job', help = 'Job name' },
                grade = { name = 'grade', help = 'Job grade' },
            },
        },
        gang = { help = 'Check Your Gang' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                gang = { name = 'gang', help = 'Gang name' },
                grade = { name = 'grade', help = 'Gang grade' },
            },
        },
        ooc = { help = 'OOC Chat Message' },
        me = {
            help = 'Show local message',
            params = {
                message = { name = 'message', help = 'Message to send' }
            },
        },
    },
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
