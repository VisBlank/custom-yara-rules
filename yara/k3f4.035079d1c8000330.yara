
rule k3f4_035079d1c8000330
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3f4.035079d1c8000330"
     cluster="k3f4.035079d1c8000330"
     cluster_size="51"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171118"
     license = "RIL-1.0 [Rick's Internet License] "
     family="bladabindi backdoor bkdr"
     md5_hashes="['014d22ae38a8e3bcdabe977c42b679c5','05895c353d0af9ae4b39f9409b4007b7','6198d91ebc77a75499ac8a620d246000']"

   strings:
      $hex_string = { 72794b65795065726d697373696f6e436865636b0047657456616c75654e616d6573006765745f4c656e67746800436f6e7665727400546f4261736536345374 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
