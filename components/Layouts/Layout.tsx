import { useState, useEffect } from "react";
import Header from "../Header/Header";
import Footer from "../Footer/Footer";
import { useTheme } from "next-themes";

type LayoutProps = {
  children: React.ReactNode;
};

export default function Layout({ children }: LayoutProps) {
  const [mounted, setMounted] = useState(false);
  const { theme } = useTheme();

  // Solution provided by next-themes library, not optimal.
  useEffect(() => {
    setMounted(true);
  }, []);

  if (!mounted) {
    return null;
  }
  //

  return (
    <div className="main-container">
      <Header theme={theme ?? ""} />
      <main className="main">{children}</main>
      <Footer theme={theme ?? ""} />
    </div>
  );
}
