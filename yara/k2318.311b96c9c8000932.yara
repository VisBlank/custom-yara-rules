
rule k2318_311b96c9c8000932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.311b96c9c8000932"
     cluster="k2318.311b96c9c8000932"
     cluster_size="17"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="redirector iframe html"
     md5_hashes="['f0c9199b1a93876803fdb003b1df997fa9e2f40f','17a8618c410933182a04f3523458ac8b786c0460','00aaf3dd9ee34be5c7eddc27c360a4120a0a1d2f']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.311b96c9c8000932"

   strings:
      $hex_string = { 2e7375626d697428293b222073697a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c454354 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
