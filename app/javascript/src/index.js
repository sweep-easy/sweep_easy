import Cookies from "js-cookie"
import { findTimeZone } from "./timezone"

document.addEventListener("turbo:load", () => {
  Cookies.set("browser_time_zone", findTimeZone(), {
    expires: 365,
    path: "/",
    secure: true,
    sameSite: "strict"
  })
})
