/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: false,
  swcMinify: true,
  eslint: {
    dirs: ['.']
  }
}

module.exports = nextConfig
