import { defineConfig } from 'vite'
import path from 'node:path'
import electron from 'vite-plugin-electron/simple'
import react from '@vitejs/plugin-react-swc'
import { browserslistToTargets } from 'lightningcss'
import browserslist from 'browserslist'

export default defineConfig(({ command }) => ({
  base: command === 'build' ? './' : '/',

  resolve: {
    alias: {
      '@': path.resolve(__dirname, 'src'),
    },
  },

  plugins: [
    react(),
    electron({
  main: { entry: 'electron/main.ts' },
  preload: { input: path.join(__dirname, 'electron/preload.ts') },
})
  ],

  css: {
    transformer: 'lightningcss',
    lightningcss: {
      targets: browserslistToTargets(browserslist('last 1 Chrome version')),
    },
  },

  build: {
    target: 'esnext',
    sourcemap: command !== 'build',
    rollupOptions: {
      external: [/\.node$/],
    },
  },

  clearScreen: false,
}))
