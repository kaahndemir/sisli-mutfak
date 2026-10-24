FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
COPY haftalik_yemek_ve_tarif_kitabi.pdf /usr/share/nginx/html/haftalik_yemek_ve_tarif_kitabi.pdf
COPY urun_fotograflari /usr/share/nginx/html/urun_fotograflari
COPY mutfak_bolgeleri /usr/share/nginx/html/mutfak_bolgeleri
COPY yemek_videolari /usr/share/nginx/html/yemek_videolari
EXPOSE 80
HEALTHCHECK --interval=10s --timeout=3s --retries=3 CMD wget -qO- http://127.0.0.1/healthz || exit 1
