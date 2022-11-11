import { useTheme } from "next-themes";
import LightModeIcon from "@mui/icons-material/LightMode";
import ModeNightIcon from "@mui/icons-material/ModeNight";
import { Tooltip } from "@mui/material";

const ThemeToggler = () => {
  const { theme, setTheme } = useTheme();
  const reverseTheme = theme === "light" ? "dark" : "light";

  return (
    <div className="theme-toogler">
      <Tooltip title={`Active ${reverseTheme} theme`}>
        <div
          className="theme-button"
          onClick={() => setTheme(reverseTheme)}
          aria-label="Toggle Dark Mode"
        >
          {theme === "light" ? <ModeNightIcon /> : <LightModeIcon />}
        </div>
      </Tooltip>
    </div>
  );
};

export default ThemeToggler;
