BeforeAll {
    Import-Module -Name ./ICT_128_LAB_2.psm1
}

Describe 'Check-Q1' {
    It 'Basic Test' {
        $result = Q1
        $result | Should -Be "hello"
    }
}

Describe 'Check-Q2' {
    It 'Basic Test' {
        $result = Q2 2
        $result | Should -Be 4
    }

    It 'Test 1' {
        $result = Q2 1
        $result | Should -Be 1
    }

    It 'Test large' {
        $result = Q2 333
        $result | Should -Be 110889
    }
}

Describe 'Check-Q3' {
    It 'Basic Test' {
        $result = Q3 "hello" "world"
        $result | Should -Be "hello world"
    }

    It 'Empty Second Parameter' {
        $result = Q3 "hello" ""
        $result | Should -Be "hello "
    }

    It 'Empty First Parameter' {
        $result = Q3 "" "world"
        $result | Should -Be " world"
    }
}

Describe 'Check-Q4' {
    It 'Basic Test' {
        $result = Q4 help
        $helphelp = Get-Help help
        $result.details.name | Should -Be "Get-Help"
    }
}

Describe 'Check-Q5' {
    It 'Basic Test' {
        $result = Q5 1 
        $result.Id | Should -Be 1
    }
}