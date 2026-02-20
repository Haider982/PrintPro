local printer = peripheral.find("printer")

while true do
    if not printer.newPage() then
        error("Cannot start a new page. Do you have ink and paper?")
    end

    print("Enter page title:")
    local PageTitle = read()
    printer.setPageTitle(PageTitle)

    print("Enter your string:")
    local ToWrite = read()

    if #ToWrite > 550 then
        print("Too long! Max character count is 550.")
    else
        printer.write(ToWrite)
        printer.endPage()
        print("Page printed successfully!")
    end

    print("Print another page? (y/n)")
    local Choice = read()

    if Choice:lower() ~= "y" then
        print("Bye bye!")
        break
    end
end