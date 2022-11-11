import "../styles/globals.css";
import type { AppProps } from "next/app";
import { ThemeProvider } from "next-themes";
import Layout from "../components/Layouts/Layout";

export default function App({ Component, pageProps }: AppProps) {
  return (
    <ThemeProvider
      enableSystem={false}
      storageKey="theme-dark"
      attribute="class"
    >
      <Layout>
        <Component {...pageProps} />{" "}
      </Layout>
    </ThemeProvider>
  );
}
