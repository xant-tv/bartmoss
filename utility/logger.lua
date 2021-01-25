-- Logging utilities for command line output.
local Logger = {
    rootPath = "plugins.cyber_engine_tweaks.mods.bartmoss."
}

function Logger:Format(raw)
    return self.template:format(self.module, tostring(raw))
end

function Logger:Debug(raw)
    local message = self:Format(raw)
    if self.writer then
        -- Use warning until low-level messages stop getting ignored.
        self.writer.warning(message)
        if not self.tee then
            return
        end
    end
    print(message)
end

function Logger:Warning(raw)
    local message = self:Format(raw)
    if self.writer then
        self.writer.warning(message)
        if not self.tee then
            return
        end
    end
    print(message)
end

function Logger:Error(raw)
    local message = self:Format(raw)
    if self.writer then
        self.writer.error(message)
        if not self.tee then
            return
        end
    end
    print(message)
end

function Logger:Critical(raw)
    local message = self:Format(raw)
    if self.writer then
        self.writer.critical(message)
        if not self.tee then
            return
        end
    end
    print(message)
end

function Logger:Tee(raw)
    local message = self:Format(raw)
    if self.writer then
        self.writer.debug(message)
    end
    print(message)
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