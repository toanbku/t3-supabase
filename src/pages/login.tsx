import { useSupabaseClient, useUser } from "@supabase/auth-helpers-react";
import {
  Auth,
  // Import predefined theme
  ThemeSupa,
} from "@supabase/auth-ui-react";
import { useEffect } from "react";

const LoginPage = () => {
  const supabaseClient = useSupabaseClient();
  const user = useUser();

  useEffect(() => {
    if (user) {
      window.location.href = "/";
    }
  }, [user]);

  return (
    <div className="py-8 px-4">
      <h1 className="text-center text-2xl">Login Page</h1>
      <div className="mx-auto max-w-xl">
        <Auth
          redirectTo="http://localhost:3000/"
          appearance={{ theme: ThemeSupa }}
          supabaseClient={supabaseClient}
          // providers={["google", "github"]}
          socialLayout="horizontal"
        />
      </div>
    </div>
  );
};

export default LoginPage;
