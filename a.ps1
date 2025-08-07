Add-Type -AssemblyName System.Windows.Forms

# Criar janela
$form = New-Object System.Windows.Forms.Form
$form.Text = "Menu do Guh_axinim"
$form.Size = New-Object System.Drawing.Size(350,200)
$form.StartPosition = "CenterScreen"

# Título
$label = New-Object System.Windows.Forms.Label
$label.Text = "Escolha uma opção:"
$label.AutoSize = $true
$label.Location = New-Object System.Drawing.Point(20,20)
$form.Controls.Add($label)

# Botão GitHub
$buttonGitHub = New-Object System.Windows.Forms.Button
$buttonGitHub.Text = "🌐 Ir para nosso GitHub"
$buttonGitHub.Size = New-Object System.Drawing.Size(280,40)
$buttonGitHub.Location = New-Object System.Drawing.Point(20,50)
$buttonGitHub.Add_Click({
    Start-Process "https://github.com/Guh_axinim"
})
$form.Controls.Add($buttonGitHub)

# Botão Sair
$buttonSair = New-Object System.Windows.Forms.Button
$buttonSair.Text = "❌ Sair"
$buttonSair.Size = New-Object System.Drawing.Size(280,30)
$buttonSair.Location = New-Object System.Drawing.Point(20,100)
$buttonSair.Add_Click({
    $form.Close()
})
$form.Controls.Add($buttonSair)

# Mostrar janela
$form.Topmost = $true
$form.ShowDialog()
