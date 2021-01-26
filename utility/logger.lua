-- Logging utilities for command line output.
local Logger = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Logger:Format(raw, simple)
    local module = self.module
    if simple then
        module = "Bartmoss | " .. module
    end
    return self.template:format(module, tostring(raw))
end

function Logger:Debug(raw)
    if self.writer then
        -- Use warning until low-level messages stop getting ignored.
        self.writer.warning(self:Format(raw))
        if not self.tee then
            return
        end
    end
    print(self:Format(raw, true))
end

function Logger:Warning(raw)
    if self.writer then
        self.writer.warning(self:Format(raw))
        if not self.tee then
            return
        end
    end
    print(self:Format(raw, true))
end

function Logger:Error(raw)
    if self.writer then
        self.writer.error(self:Format(raw))
        if not self.tee then
            return
        end
    end
    print(self:Format(raw, true))
end

function Logger:Critical(raw)
    if self.writer then
        self.writer.critical(self:Format(raw))
        if not self.tee then
            return
        end
    end
    print(self:Format(raw, true))
end

function Logger:Tee(raw)
    if self.writer then
        self.writer.debug(self:Format(raw))
    end
    print(self:Format(raw, true))
end

function Logger:New(writer, module, template, tee)

    local I = {}
    setmetatable(I, self)
    self.__index = self

    I.writer = writer
    I.module = module or "Bartmoss"
    I.template = template or "[%s] %s"
    I.tee = tee or false

    return I

end

return Logger