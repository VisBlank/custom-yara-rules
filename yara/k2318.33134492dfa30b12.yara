
rule k2318_33134492dfa30b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.33134492dfa30b12"
     cluster="k2318.33134492dfa30b12"
     cluster_size="3"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="html iframe redirector"
     md5_hashes="['2fe9d7603683db3b3fe68123cab820baafd355a3','32800cf2282faf654d0ddb3578674cea196da6dd','26c34dfb7831e08ea1e5faf096c310cc2c38bee1']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.33134492dfa30b12"

   strings:
      $hex_string = { 7a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c45435445443ec2fbe1e5f0e8f2e53c2f6f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
