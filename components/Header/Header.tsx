import styles from "./Header.module.css";
import HomeIcon from "@mui/icons-material/Home";
import KeyboardBackspaceIcon from "@mui/icons-material/KeyboardBackspace";
import Image from "next/image";
import ThemeToggler from "../Theme/ThemeToogler";
import Link from "next/link";
import { Tooltip } from "@mui/material";
import { useRouter } from "next/router";

interface HeaderProps {
  theme: string;
}

const Header = ({ theme }: HeaderProps) => {
  const router = useRouter();
  return (
    <header
      className={`${styles.header} ${theme == "dark" ? styles.blackTheme : ""}`}
    >
      <div className={styles.gridCell1}>
        {router.asPath !== "/" && (
          <Tooltip title={`Go home`}>
            <Link href={`/`}>
              <KeyboardBackspaceIcon />
              <HomeIcon />
            </Link>
          </Tooltip>
        )}
      </div>
      <div className={styles.gridCell2}>
        <Image src={`/icon.png`} width={40} height={40} alt="logo" />
      </div>
      <div className={styles.gridCell3}>
        <ThemeToggler />
      </div>
    </header>
  );
};

export default Header;
