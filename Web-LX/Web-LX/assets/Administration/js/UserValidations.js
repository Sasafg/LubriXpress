
//////////////////////     Esperar 5 segundos y luego ocultar el mensaje     ////////////////////////////////////////////

setTimeout(function () {
    var mensajeDiv = document.getElementById('mensaje');
    if (mensajeDiv != null) {
        mensajeDiv.style.display = 'none';
    }
}, 5000); // 5000 milisegundos = 5 segundos


    document.addEventListener("DOMContentLoaded", function () {
        var preRegistrationForm = document.getElementById("UserForm");
    var preRegistrationFormButton = document.getElementById("UserFormButton");

    preRegistrationFormButton.addEventListener("click", function (event) {
        event.preventDefault(); // Evitar el env�o autom�tico del formulario

    if (isFormValid(preRegistrationForm)) {
        // Si el formulario es v�lido, muestra el modal de �xito
        $("#successModal").modal("show");
            } else {
        emptyfields(preRegistrationForm);
    $("#errorModal").modal("show");

            }
        });

    function isFormValid(form) {
            // Valida si todos los campos del formulario est�n llenos
            var formInputs = form.querySelectorAll("input, textarea, select");
    for (var i = 0; i < formInputs.length; i++) {
                if (formInputs[i].value.trim() === "") {
                    return false; // El formulario no est� completo
                } else {
        formInputs[i].style.borderColor = "Green";
                }
            }
    return true; // El formulario est� completo
        }

    function emptyfields(form) {
            // Valida si todos los campos del formulario est�n llenos
            var formInputs = form.querySelectorAll("input, textarea, select");
    for (var i = 0; i < formInputs.length; i++) {
                if (formInputs[i].value.trim() === "") {
        formInputs[i].style.borderColor = "FireBrick";
                } else {
        formInputs[i].style.borderColor = "Green";
                }
            }
    return true; // El formulario est� completo
        }
    });

/////////////////////////////// email  ////////////////////////////////////////////////////////////////

document.querySelector('#email').addEventListener('keyup', function () {
    var email = this.value;
    var validationMessage = document.querySelector('#emailValidationMessage');

    if (email.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else if (!isValidEmail(email)) {
        validationMessage.innerHTML = "Por favor, ingrese un correo electronico valido, ejemplo: correo@email.com";
        this.style.borderColor = "FireBrick";
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }
});

function isValidEmail(email) {
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    return emailPattern.test(email);
}


/////////////////////////////// phone  ////////////////////////////////////////////////////////////////

document.querySelector('#cel').addEventListener('input', function () {
    var phone = this.value;
    var validationMessage = document.querySelector('#PhoneValidationMessage');

    if (phone.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else if (!/^\d+$/.test(phone)) {
        validationMessage.innerHTML = "Telefono solo permite numeros.";
        this.style.borderColor = "FireBrick";
    } else if (phone.length < 8) {
        validationMessage.innerHTML = "Telefono debe ser minimo de 8 digitos.";
        this.style.borderColor = "FireBrick";
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }
});
/////////////////////////////// Cedula  ////////////////////////////////////////////////////////////////

document.querySelector('#PersonalId').addEventListener('input', function () {
    var cedula = this.value;
    var validationMessage = document.querySelector('#validationMessage');

    if (cedula.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else if (!/^\d+$/.test(cedula)) {
        validationMessage.innerHTML = "Cedula solo permite numeros.";
        this.style.borderColor = "FireBrick";
    } else if (cedula.length < 9) {
        validationMessage.innerHTML = "Telefono debe ser minimo de 9 d�gitos.";
        this.style.borderColor = "FireBrick";
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }

    
});




/////////////////////////////// name  ////////////////////////////////////////////////////////////////

document.querySelector('#nameField').addEventListener('input', function () {
    var name = this.value;
    var validationMessage = document.querySelector('#nameValidationMessage');

    if (name.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else if (!/^[A-Za-z������������\s]+$/.test(name)) {
        validationMessage.innerHTML = "Nombre solo permite letras.";
        this.style.borderColor = "FireBrick";
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }
});

/////////////////////////////// apellido 1  ////////////////////////////////////////////////////////////////

document.querySelector('#lastNameField').addEventListener('input', function () {
    var name = this.value;
    var validationMessage = document.querySelector('#lastNameValidationMessage');

    if (name.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else if (!/^[A-Za-z������������\s]+$/.test(name)) {
        validationMessage.innerHTML = "Apellido solo permite letras.";
        this.style.borderColor = "FireBrick";
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }
});

/////////////////////////////// apellido 2  ////////////////////////////////////////////////////////////////

document.querySelector('#slnFIELD').addEventListener('input', function () {
    var name = this.value;
    var validationMessage = document.querySelector('#slnFIELDValidationMessage');

    if (name.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else if (!/^[A-Za-z������������\s]+$/.test(name)) {
        validationMessage.innerHTML = "Apellido solo permite letras.";
        this.style.borderColor = "FireBrick";
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }
});

///////////////////////////////// Identifications  ////////////////////////////////////////////////////////////////

document.querySelector('#Identifications').addEventListener('input', function () {
    var validationMessage = document.querySelector('#validationIdentifications');
    var Curso = this.value;
    if (Curso > 0) {
        this.style.borderColor = "Green";
        validationMessage.innerHTML = "";
    } else {
        this.style.borderColor = "FireBrick";
        validationMessage.innerHTML = "Seleccione un tipo de cedula.";

    }
});

/////////////////////////////////// Rol  ////////////////////////////////////////////////////////////////

document.querySelector('#Rol').addEventListener('input', function () {
    var validationMessage = document.querySelector('#validationRol');
    var Curso = this.value;
    if (Curso > 0) {
        this.style.borderColor = "Green";
        validationMessage.innerHTML = "";
    } else {
        this.style.borderColor = "FireBrick";
        validationMessage.innerHTML = "Seleccione un rol.";

    }
});

/////////////////////////////////// Address  ////////////////////////////////////////////////////////////////

document.querySelector('#Address').addEventListener('input', function () {
    var name = this.value;
    var validationMessage = document.querySelector('#ValidationMessageDirection');

    if (name.trim() === "") {
        validationMessage.innerHTML = "";
        this.style.borderColor = ""; // Restaurar el color del borde
    } else {
        validationMessage.innerHTML = "";
        this.style.borderColor = "Green";
    }
});

/////////////////////////////////// Fecha Nacimiento  ////////////////////////////////////////////////////////////////

function validateDateOfBirth() {
    const today = new Date();
    const inputDate = new Date(document.getElementById('Birthdate').value);
    const age = today.getFullYear() - inputDate.getFullYear();

    if (today.getMonth() < inputDate.getMonth() || (today.getMonth() === inputDate.getMonth() && today.getDate() < inputDate.getDate())) {
        age--;
    }

    if (age < 6) {
        document.getElementById('validationMessagedate').textContent = 'La edad debe ser mayor a 6.';
    } else {
        document.getElementById('validationMessagedate').textContent = '';
    }
}

document.getElementById('Birthdate').addEventListener('change', validateDateOfBirth);
