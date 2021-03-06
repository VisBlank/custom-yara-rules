
rule m2319_1ad29ec1c4000b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m2319.1ad29ec1c4000b12"
     cluster="m2319.1ad29ec1c4000b12"
     cluster_size="7"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="fakejquery script trojandownloader"
     md5_hashes="['65c7bbba27b41be32adae452288521df3f3afd72','d153debb7f70962365f8ab5d29890536d24b2ceb','3f33d7c9f9ab34d8d83ba8b503b83411cc51540b']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=m2319.1ad29ec1c4000b12"

   strings:
      $hex_string = { 746d702f696e7374616c6c5f346466653566333565633333362f64756d702e70687029205b3c6120687265663d2766756e6374696f6e2e696e636c756465273e }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
