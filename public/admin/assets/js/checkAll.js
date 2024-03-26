var deleteSelectedRoute = document.getElementById('deleteSelected').getAttribute('data-delete-route');
var csrfToken = document.getElementById('deleteSelected').getAttribute('data-csrf-token');
    document.addEventListener("DOMContentLoaded", function() {
        document.getElementById('checkAll').addEventListener('click', function() {
            var checkboxes = document.querySelectorAll('.comment-checkbox');
            checkboxes.forEach(function(checkbox) {
                checkbox.checked = this.checked;
                updateDeleteButtonState(); // Cập nhật trạng thái của nút "Xóa tất cả"
            }, this);
        });

        document.querySelectorAll('.comment-checkbox').forEach(function(checkbox) {
            checkbox.addEventListener('change', function() {
                updateDeleteButtonState(); // Cập nhật trạng thái của nút "Xóa tất cả" khi checkbox thay đổi
            });
        });

        document.getElementById('deleteSelected').addEventListener('click', function() {
            var checkboxes = document.querySelectorAll('.comment-checkbox:checked');
            var commentIds = Array.from(checkboxes).map(function(checkbox) {
                return checkbox.getAttribute('data-id');
            });

            if (commentIds.length > 0) {
                // Gửi yêu cầu xóa tất cả các bình luận đã chọn
                fetch(deleteSelectedRoute, {
                    method: 'POST',
                    headers: {
                        'X-CSRF-TOKEN': csrfToken,
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ comment_ids: commentIds })
                })
              
                .then(response => {
            if (response.ok) {
                // Xóa thành công, làm mới trang                             
                location.reload();          
            } 
        })
                .catch(error => {
                    console.error('Error:', error);
                });
            } else {
                alert('Vui lòng chọn ít nhất một bình luận để xóa.');
            }
        });

        function updateDeleteButtonState() {
            var checkboxes = document.querySelectorAll('.comment-checkbox:checked');
            var deleteButton = document.getElementById('deleteSelected');
            if (checkboxes.length > 0) {
                // Nếu có ít nhất một checkbox được chọn, kích hoạt nút "Xóa tất cả" và đổi màu đỏ
                deleteButton.classList.remove('btn-light');
                deleteButton.classList.add('btn-danger');
                deleteButton.disabled = false;
            } else {
                // Nếu không có checkbox nào được chọn, vô hiệu hóa nút "Xóa tất cả" và giữ màu light
                deleteButton.classList.remove('btn-danger');
                deleteButton.classList.add('btn-light');
                deleteButton.disabled = true;
            }
        }

        // Ban đầu, vô hiệu hóa nút "Xóa tất cả" và giữ màu light
        updateDeleteButtonState();
    });
