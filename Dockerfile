# ===== Base Image =====
FROM node:25-alpine

# ===== Workdir =====
WORKDIR /app

# ===== Install dependencies =====
COPY package*.json ./
RUN npm ci

# ===== Copy source =====
COPY . .

# ===== Vite Dev Server =====
EXPOSE 5173

# 外部アクセスを許可
ENV HOST=0.0.0.0

# ===== Start App =====
CMD ["npm", "run", "serve", "--", "--host"]

