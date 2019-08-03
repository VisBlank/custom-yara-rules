
rule k2319_3816a7adc6220b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2319.3816a7adc6220b12"
     cluster="k2319.3816a7adc6220b12"
     cluster_size="13"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="kryptik script diplugem"
     md5_hashes="['b967299610deee6a0e973c482f8f72611094bd98','0f72ac812909ca1e6983d9f832c30bd1da98eb55','0db1cded192a3fb226dc9036fa787b638929205a']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2319.3816a7adc6220b12"

   strings:
      $hex_string = { 66696e6564297b72657475726e20755b525d3b7d76617220533d28283078382c31312e293c3d2831332e383845322c37352e293f28362e2c3078636339653264 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
