
rule k2319_185596b9ca800b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2319.185596b9ca800b12"
     cluster="k2319.185596b9ca800b12"
     cluster_size="92"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="kryptik script diplugem"
     md5_hashes="['1dee6df36bbca14c2e2561bbdbe26a747effbdab','a1678fde8de26ac5952662ed53148706628a5a87','6393d73e5e108fdff81b7af032342200c618f743']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2319.185596b9ca800b12"

   strings:
      $hex_string = { 575b555d213d3d756e646566696e6564297b72657475726e20575b555d3b7d766172204c3d282832352c3078313743293e2830783234362c31312e394531293f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
