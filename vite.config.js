import vue from '@vitejs/plugin-vue';

export default ({ command }) => ({
    base: command === 'serve' ? '' : '/includes/build/',
    publicDir: false,
    build: {
        manifest: true,
        outDir: 'includes/build/',
        rollupOptions: {
            input: 'resources/assets/js/app.js',
        },
    },
    resolve: {
        alias: {
            "@": "/resources/assets/js"
        }
    },
    plugins: [vue()]
});