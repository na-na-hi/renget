Default values: https://docs.anthropic.com/claude/reference/complete_post

As for what they do, I'll use OpenAI's playground to demonstrate visually:

Temperature 0: https://dumb.one/s/zDE2kDJXBz.png
Temperature 1: https://dumb.one/s/UGPZ9oAaOU.png
Temperature 2: https://dumb.one/s/O98HEQHLut.png

As you can see, when it's time to predict next token after "Welcome to the sweetest," it had choices. First and most likely choice, with about 40%, is "spot". Temperature 0 always chooses first choice.

Temperature 1 increased randomness and chooses less likely options.

Temperature 2 went off the rails and generated gibberish due to choices so far off top candidates.

The higher the temperature, the more likely it will choose a very unlikely token.

To rein in that schizo, you can either lower the temperature or cut down on the list of candidate tokens. That's where the Top P and Top K come in.

Top P at 1 doesn't modify the candidate list.

Top P at 0.5 will throw away all candidates that don't make it to top 50%.

Top P at 0.1 will throw away all candidates that don't make it to top 10%.

Top P at 0 essentially disables temperature because there's always only one candidate -- the top one.

To demonstrate, temperature 2, but topp 0.7: https://dumb.one/s/6oVApu7CIG.png

As you can see, topp reins in the schizo, not considering candidates that don't fit top 70%, before applying temperature. The text makes sense, even if temperature is 2.

This is (theoretically) more creative than temperature 1+topp1.

OpenAI doesn't have Top K, but it works similarly.

Top K 5 - considers only top 5 candidates. (Anthropic default)

Top K 2 -- only top 2 candidates (first screenshot would mean either "spot" or "place").

Top K 1 -- will essentially make it behave like temperature 0 (should be obvious now why).

I wrote a simple script to verify top k: https://dumb.one/gpt/claude-parameters/claude.sh.md

Prompt's simple: "Write me a poem about bonds, connections and shared experiences in 8 lines, and each line must start in alphabetic order. Put it inside a codeblock."

1. Temperature 0 makes it generate exactly same output, as expected:
https://dumb.one/gpt/claude-parameters/01-temp0-run1.md
https://dumb.one/gpt/claude-parameters/01-temp0-run2.md
https://dumb.one/gpt/claude-parameters/01-temp0-run3.md

2. Temperature 1+topk500+topp1 generates different results every time:
https://dumb.one/gpt/claude-parameters/02-temp1-run1.md
https://dumb.one/gpt/claude-parameters/02-temp1-run2.md
https://dumb.one/gpt/claude-parameters/02-temp1-run3.md

3. With temperature 1, but top k 1, it generates output that matches exactly temperature 0:
https://dumb.one/gpt/claude-parameters/03-temp1-topk1-run1.md
https://dumb.one/gpt/claude-parameters/03-temp1-topk1-run2.md
https://dumb.one/gpt/claude-parameters/03-temp1-topk1-run3.md