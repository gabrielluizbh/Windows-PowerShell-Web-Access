## Script Instalar e configurar o Windows PowerShell Web Access  - Créditos Gabriel Luiz - www.gabrielluiz.com ##


Install-WindowsFeature Name WindowsPowerShellWebAccess -IncludeManagementTools -Restart # Instalação do Recurso Windows PowerShell Web Access.


Install-PswaWebApplication -UseTestCertificate # Configura o Gateway, usando o certificado auto assinado.


Add-PswaAuthorizationRule -UserName * -ComputerName * -ConfigurationName * # Para liberar o acesso ao PSWA para todos os usuário e computadores.


Add-PswaAuthorizationRule -UserName Contoso\gabriel.luiz -ComputerName ADDS -ConfigurationName Microsoft.PowerShell # Autoriza um usuário para ter acesso a um servidor.


Get-PswaAuthorizationRule # Verifica quais as as regras foram criadas.


Remove-PswaAuthorizationRule -Id 1 # Remove a regra criada com a ID 1.