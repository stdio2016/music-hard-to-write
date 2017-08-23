<?xml version="1.0" encoding="UTF-8"?>
<x:stylesheet 
  version="1.0"
  xmlns:x='http://www.w3.org/1999/XSL/Transform'>
  <x:template match='/score-partwise'>
    <score-partwise>
      <x:apply-templates select='*'></x:apply-templates>
    </score-partwise>
  </x:template>
  <x:template match='note[dot = "" and type = "eighth" and following-sibling::*[1][name() = "note" and not(dot = "") and type = "16th"]]'>
    <x:copy>
      <x:apply-templates select='*'>
        <x:with-param name='fixLeft' select='"yes"'></x:with-param>
      </x:apply-templates>
    </x:copy>
  </x:template>
  <x:template match='note[not(dot = "") and type = "16th" and preceding-sibling::*[1][name() = "note" and dot = "" and type = "eighth"]]'>
    <x:copy>
      <x:apply-templates select='*'>
        <x:with-param name='fixRight' select='"yes"'></x:with-param>
      </x:apply-templates>
    </x:copy>
  </x:template>
  <x:template match='*'>
    <x:param name='fixLeft' select='"no"'></x:param>
    <x:param name='fixRight' select='"no"'></x:param>
    <x:copy>
      <x:for-each select='@*'>
        <x:attribute name='{name()}'>
          <x:value-of select='.'/>
        </x:attribute>
      </x:for-each>
      <x:apply-templates select='node()'>
        <x:with-param name='fixLeft' select='$fixLeft'/>
        <x:with-param name='fixRight' select='$fixRight'/>
      </x:apply-templates>
    </x:copy> 
  </x:template>
  <x:template match='dot'>
    <x:param name='fixLeft' select='"no"'></x:param>
    <x:if test='$fixLeft = "no"'>
      <dot/>
    </x:if>
  </x:template>
  <x:template match='type'>
    <x:param name='fixRight' select='"no"'></x:param>
    <type>
      <x:choose>
        <x:when test='$fixRight = "yes"'>eighth</x:when>
        <x:otherwise>
          <x:value-of select='.'/>
        </x:otherwise>
      </x:choose>
    </type>
  </x:template>
  <x:template match='duration'>
    <x:param name='fixLeft' select='"no"'></x:param>
    <x:param name='fixRight' select='"no"'></x:param>
    <duration>
      <x:choose>
        <x:when test='$fixLeft = "yes"'>
          <x:value-of select='. * 2 div 3'/>
        </x:when>
        <x:when test='$fixRight = "yes"'>
          <x:value-of select='. * 2'/>
        </x:when>
        <x:otherwise>
          <x:value-of select='.'/>
        </x:otherwise>
      </x:choose>
    </duration>
  </x:template>
</x:stylesheet>
