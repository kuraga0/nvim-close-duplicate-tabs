It closes duplicate tabs.

# Usage (lazy)
``` lua
return {
	"kuraga0/nvim-close-duplicate-tabs",
	cmd = { "CloseDuplicateTabs" }, 
	keys = { 
		{ "<leader>td", 
			"<cmd>CloseDuplicateTabs<cr>", 
			desc = "Close duplicate tabs"
		}
	}, 
}

```
