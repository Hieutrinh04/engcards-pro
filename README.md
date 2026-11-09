# EngCards Pro

Ứng dụng học từ vựng tiếng Anh bằng flashcard, trắc nghiệm và lịch ôn Leitner.

Trang học: [EngCards Pro](https://hieutrinh04.github.io/engcards-pro/).

Đăng nhập bằng tài khoản email của dự án Supabase `ryanvoca`. Khi đổi thiết bị, hãy dùng cùng tài khoản để tải lại bộ từ, từ đã đánh dấu và tiến độ ôn. Chờ trạng thái **Đã lưu** trước khi đóng trang hoặc chuyển thiết bị. Nếu có lỗi mạng, giữ trang mở và bấm **Thử lưu lại**.

Nếu chưa có tài khoản, nhập email và mật khẩu rồi bấm **Đăng ký**. Trang sẽ đăng nhập ngay sau khi tạo tài khoản.

`index.html` chạy trực tiếp trên GitHub Pages. `schema.sql` tạo bảng riêng `public.engcards_state` và các chính sách để mỗi tài khoản chỉ đọc và sửa dữ liệu của chính mình. Trang chỉ sử dụng khóa publishable của Supabase.
