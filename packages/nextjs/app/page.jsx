// import Image from "next/image";
import { GiEvilHand } from "react-icons/gi";
import { BsTwitterX } from "react-icons/bs";
import { FaDiscord } from "react-icons/fa";
import { FaLinkedin } from "react-icons/fa";
import { FaMedium } from "react-icons/fa6";

export default function Home() {
  return (
    <div className="min-h-screen grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
      <div className="w-3/5 text-red m-auto text-center font-[family-name:var(--font-geist-sans)]">
        <header className="flex justify-center items-center">
          <GiEvilHand size={52}/>
        </header>

        <main className="mt-6 mb-14">
          <p className="text-xs">Welcome to...</p>
          <h1 className="text-6xl uppercase text-purple-600 font-semibold">Elig!</h1>
          <p className="text-sm my-4">Discover the easiest way to stay connected with the projects you care about. Elig is a platform designed for early adopters who want to be first in line for new, innovative, and exclusive products and services. By joining our waitlist, you'll secure your spot for early access, priority updates, and exclusive member benefits. Elig connects you with projects on the brink of launching, ensuring you’re always in the loop and at the forefront of what's next. Sign up today and be part of something new!</p>
        </main>

        <form className="w-3/4 m-auto text-center rounded-sm p-1 flex justify-between gap-2 items-center p-0.5 bg-[#4b4a4a]" action="submit" id="myForm">
          <input className="outline-none w-full border-none bg-[#4b4a4a] p-0.5 text-sm" type="text" placeholder="0xaE3f..." id="type" name="name" required/>
          <button className="bg-[#fff] text-purple-600 hover:bg-purple-600 hover:text-[#fff] rounded-sm uppercase p-2 text-sm font-semibold" type="submit">Submit</button>
        </form>

        <footer className="mt-24 flex flex-grow justify-center items-center gap-2">
          <BsTwitterX className="cursor-pointer"/>
          <FaDiscord className="cursor-pointer"/>
          <FaLinkedin className="cursor-pointer"/>
          <FaMedium className="cursor-pointer"/>
        </footer>
      </div>
    </div>
  );
}
