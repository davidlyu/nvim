return {
    root_dir = function()
        return vim.fn.getcwd()
    end,
    -- 禁用Pyright的诊断信息（使用pylint）
    handlers = {
        ---@diagnostic disable-next-line: unused-vararg
        ["textDocument/publishDiagnostics"] = function(...)
        end
    },
    settings = {
        python = {
            analysis = {
                typeCheckingMode = "off"
            }
        }
    }
}
