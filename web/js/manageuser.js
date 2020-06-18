function manageUser(action, phone){
    $.ajax({
        type: "POST",
        url: "ajax",
        data: {data1 : action, data2 : phone, signal : "mangeuser"},
        cache: false,

        success: function(result){
            location.reload(true);
        }
    });
}