FROM alpine

# Установка OpenSSH
RUN apk add --no-cache openssh

# Генерация SSH ключей
RUN ssh-keygen -A

# Установка пароля для root
RUN echo "root:password" | chpasswd

# Разрешение входа root по паролю
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Открытие порта 22
EXPOSE 22

# Запуск SSH сервера
CMD ["/usr/sbin/sshd", "-D"]