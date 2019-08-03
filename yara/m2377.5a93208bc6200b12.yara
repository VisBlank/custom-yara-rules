
rule m2377_5a93208bc6200b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m2377.5a93208bc6200b12"
     cluster="m2377.5a93208bc6200b12"
     cluster_size="10"
     filetype = "HTML document"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171118"
     license = "RIL-1.0 [Rick's Internet License] "
     family="ramnit html script"
     md5_hashes="['1312703f4f35257dc4651468da44f29d','2ea817376850e725064226fb04737b88','f726b9a70a658e62a68bc19c6d176233']"

   strings:
      $hex_string = { 74652043687228434c6e6728222648222026204d6964285772697465446174612c692c322929290d0a4e6578740d0a46696c654f626a2e436c6f73650d0a456e }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
