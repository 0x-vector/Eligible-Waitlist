// import Image from "next/image";

export default function Home() {
  return (
    <div className="grid grid-rows-[20px_1fr_20px] items-center justify-items-center min-h-screen p-8 pb-20 gap-16 sm:p-20 font-[family-name:var(--font-geist-sans)]">
      <div className="w-3/5 text-red m-auto text-center font-[family-name:var(--font-geist-sans)]">
        <header>
          <IoLogoEuro size={28}/>
        </header>

        <main>
          <p>Welcome to</p>
          <h1>Elig!</h1>
          <p>Discover the easiest way to stay connected with the projects you care about. Elig is a platform designed for early adopters who want to be first in line for new, innovative, and exclusive products and services. By joining our waitlist, you'll secure your spot for early access, priority updates, and exclusive member benefits. Elig connects you with projects on the brink of launching, ensuring you’re always in the loop and at the forefront of what's next. Sign up today and be part of something new!</p>
        </main>

        <form action="submit" id="myForm">
          <input type="text" placeholder="0xaE3f..." id="type" name="name" required/>
          <button type="submit">Submit</button>
        </form>

        <footer>
          <BsTwitterX />
          <FaDiscord />
          <FaLinkedin />
          <FaMedium />
        </footer>
      </div>
    </div>
  );
}
