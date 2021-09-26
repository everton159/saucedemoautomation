*Settings*
Documentation   Helper kw

Library    OperatingSystem


*Keywords
Get Json
    [Arguments]    ${route}     ${filename}

    ${fixtures}    Get File    ${EXECDIR}/resources/fixtures/${route}/${filename}
    ${json}        Evaluate    json.loads($fixtures)                        json
    [return]      ${json}