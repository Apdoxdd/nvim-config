-- Run MIPS assembly with MARS (java -jar Mars.jar) from inside nvim.
-- <leader>mr  save the file and run it in a terminal split (you can type input there).
local jar = vim.fn.expand("~/dev/tools/mars/Mars.jar")

local function run_mars()
  if vim.fn.executable("java") == 0 then
    vim.notify("java not found - install it with: sudo apt install default-jre", vim.log.levels.ERROR)
    return
  end
  if vim.fn.filereadable(jar) == 0 then
    vim.notify("MARS jar not found at " .. jar, vim.log.levels.ERROR)
    return
  end
  vim.cmd("write")
  local file = vim.fn.expand("%:p")
  vim.cmd("botright 12new")
  vim.bo.buflisted = false -- keep the output out of the bufferline
  vim.bo.bufhidden = "wipe" -- remove it when its window is closed
  vim.fn.jobstart({ "java", "-jar", jar, "nc", "sm", file }, { term = true })
  vim.cmd("startinsert")
end

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "asm", "mips" },
  callback = function(args)
    vim.keymap.set("n", "<leader>mr", run_mars, { buffer = args.buf, desc = "Run with MARS" })
  end,
})
