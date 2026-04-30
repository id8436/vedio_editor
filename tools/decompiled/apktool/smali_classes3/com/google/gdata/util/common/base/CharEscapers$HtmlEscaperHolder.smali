.class Lcom/google/gdata/util/common/base/CharEscapers$HtmlEscaperHolder;
.super Ljava/lang/Object;
.source "CharEscapers.java"


# static fields
.field private static final HTML_ESCAPER:Lcom/google/gdata/util/common/base/CharEscaper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/google/gdata/util/common/base/CharEscapers$HtmlCharEscaper;

    new-instance v1, Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    invoke-direct {v1}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;-><init>()V

    const/16 v2, 0x22

    const-string/jumbo v3, "&quot;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x27

    const-string/jumbo v3, "&#39;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x26

    const-string/jumbo v3, "&amp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c

    const-string/jumbo v3, "&lt;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3e

    const-string/jumbo v3, "&gt;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa0

    const-string/jumbo v3, "&nbsp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa1

    const-string/jumbo v3, "&iexcl;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa2

    const-string/jumbo v3, "&cent;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa3

    const-string/jumbo v3, "&pound;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa4

    const-string/jumbo v3, "&curren;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa5

    const-string/jumbo v3, "&yen;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa6

    const-string/jumbo v3, "&brvbar;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa7

    const-string/jumbo v3, "&sect;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa8

    const-string/jumbo v3, "&uml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xa9

    const-string/jumbo v3, "&copy;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xaa

    const-string/jumbo v3, "&ordf;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xab

    const-string/jumbo v3, "&laquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xac

    const-string/jumbo v3, "&not;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xad

    const-string/jumbo v3, "&shy;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xae

    const-string/jumbo v3, "&reg;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xaf

    const-string/jumbo v3, "&macr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb0

    const-string/jumbo v3, "&deg;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb1

    const-string/jumbo v3, "&plusmn;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb2

    const-string/jumbo v3, "&sup2;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb3

    const-string/jumbo v3, "&sup3;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb4

    const-string/jumbo v3, "&acute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb5

    const-string/jumbo v3, "&micro;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb6

    const-string/jumbo v3, "&para;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb7

    const-string/jumbo v3, "&middot;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb8

    const-string/jumbo v3, "&cedil;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xb9

    const-string/jumbo v3, "&sup1;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xba

    const-string/jumbo v3, "&ordm;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xbb

    const-string/jumbo v3, "&raquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xbc

    const-string/jumbo v3, "&frac14;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xbd

    const-string/jumbo v3, "&frac12;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xbe

    const-string/jumbo v3, "&frac34;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xbf

    const-string/jumbo v3, "&iquest;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc0

    const-string/jumbo v3, "&Agrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc1

    const-string/jumbo v3, "&Aacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc2

    const-string/jumbo v3, "&Acirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc3

    const-string/jumbo v3, "&Atilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc4

    const-string/jumbo v3, "&Auml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc5

    const-string/jumbo v3, "&Aring;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc6

    const-string/jumbo v3, "&AElig;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc7

    const-string/jumbo v3, "&Ccedil;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc8

    const-string/jumbo v3, "&Egrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xc9

    const-string/jumbo v3, "&Eacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xca

    const-string/jumbo v3, "&Ecirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xcb

    const-string/jumbo v3, "&Euml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xcc

    const-string/jumbo v3, "&Igrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xcd

    const-string/jumbo v3, "&Iacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xce

    const-string/jumbo v3, "&Icirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xcf

    const-string/jumbo v3, "&Iuml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd0

    const-string/jumbo v3, "&ETH;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd1

    const-string/jumbo v3, "&Ntilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd2

    const-string/jumbo v3, "&Ograve;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd3

    const-string/jumbo v3, "&Oacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd4

    const-string/jumbo v3, "&Ocirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd5

    const-string/jumbo v3, "&Otilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd6

    const-string/jumbo v3, "&Ouml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd7

    const-string/jumbo v3, "&times;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd8

    const-string/jumbo v3, "&Oslash;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xd9

    const-string/jumbo v3, "&Ugrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xda

    const-string/jumbo v3, "&Uacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xdb

    const-string/jumbo v3, "&Ucirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xdc

    const-string/jumbo v3, "&Uuml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xdd

    const-string/jumbo v3, "&Yacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xde

    const-string/jumbo v3, "&THORN;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xdf

    const-string/jumbo v3, "&szlig;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe0

    const-string/jumbo v3, "&agrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe1

    const-string/jumbo v3, "&aacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe2

    const-string/jumbo v3, "&acirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe3

    const-string/jumbo v3, "&atilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe4

    const-string/jumbo v3, "&auml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe5

    const-string/jumbo v3, "&aring;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe6

    const-string/jumbo v3, "&aelig;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe7

    const-string/jumbo v3, "&ccedil;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe8

    const-string/jumbo v3, "&egrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xe9

    const-string/jumbo v3, "&eacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xea

    const-string/jumbo v3, "&ecirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xeb

    const-string/jumbo v3, "&euml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xec

    const-string/jumbo v3, "&igrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xed

    const-string/jumbo v3, "&iacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xee

    const-string/jumbo v3, "&icirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xef

    const-string/jumbo v3, "&iuml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf0

    const-string/jumbo v3, "&eth;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf1

    const-string/jumbo v3, "&ntilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf2

    const-string/jumbo v3, "&ograve;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf3

    const-string/jumbo v3, "&oacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf4

    const-string/jumbo v3, "&ocirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf5

    const-string/jumbo v3, "&otilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf6

    const-string/jumbo v3, "&ouml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf7

    const-string/jumbo v3, "&divide;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf8

    const-string/jumbo v3, "&oslash;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xf9

    const-string/jumbo v3, "&ugrave;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xfa

    const-string/jumbo v3, "&uacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xfb

    const-string/jumbo v3, "&ucirc;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xfc

    const-string/jumbo v3, "&uuml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xfd

    const-string/jumbo v3, "&yacute;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xfe

    const-string/jumbo v3, "&thorn;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0xff

    const-string/jumbo v3, "&yuml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x152

    const-string/jumbo v3, "&OElig;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x153

    const-string/jumbo v3, "&oelig;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x160

    const-string/jumbo v3, "&Scaron;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x161

    const-string/jumbo v3, "&scaron;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x178

    const-string/jumbo v3, "&Yuml;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x192

    const-string/jumbo v3, "&fnof;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2c6

    const-string/jumbo v3, "&circ;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2dc

    const-string/jumbo v3, "&tilde;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x391

    const-string/jumbo v3, "&Alpha;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x392

    const-string/jumbo v3, "&Beta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x393

    const-string/jumbo v3, "&Gamma;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x394

    const-string/jumbo v3, "&Delta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x395

    const-string/jumbo v3, "&Epsilon;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x396

    const-string/jumbo v3, "&Zeta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x397

    const-string/jumbo v3, "&Eta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x398

    const-string/jumbo v3, "&Theta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x399

    const-string/jumbo v3, "&Iota;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x39a

    const-string/jumbo v3, "&Kappa;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x39b

    const-string/jumbo v3, "&Lambda;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x39c

    const-string/jumbo v3, "&Mu;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x39d

    const-string/jumbo v3, "&Nu;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x39e

    const-string/jumbo v3, "&Xi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x39f

    const-string/jumbo v3, "&Omicron;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a0

    const-string/jumbo v3, "&Pi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a1

    const-string/jumbo v3, "&Rho;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a3

    const-string/jumbo v3, "&Sigma;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a4

    const-string/jumbo v3, "&Tau;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a5

    const-string/jumbo v3, "&Upsilon;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a6

    const-string/jumbo v3, "&Phi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a7

    const-string/jumbo v3, "&Chi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a8

    const-string/jumbo v3, "&Psi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3a9

    const-string/jumbo v3, "&Omega;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b1

    const-string/jumbo v3, "&alpha;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b2

    const-string/jumbo v3, "&beta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b3

    const-string/jumbo v3, "&gamma;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b4

    const-string/jumbo v3, "&delta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b5

    const-string/jumbo v3, "&epsilon;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b6

    const-string/jumbo v3, "&zeta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b7

    const-string/jumbo v3, "&eta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b8

    const-string/jumbo v3, "&theta;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3b9

    const-string/jumbo v3, "&iota;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3ba

    const-string/jumbo v3, "&kappa;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3bb

    const-string/jumbo v3, "&lambda;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3bc

    const-string/jumbo v3, "&mu;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3bd

    const-string/jumbo v3, "&nu;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3be

    const-string/jumbo v3, "&xi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3bf

    const-string/jumbo v3, "&omicron;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c0

    const-string/jumbo v3, "&pi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c1

    const-string/jumbo v3, "&rho;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c2

    const-string/jumbo v3, "&sigmaf;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c3

    const-string/jumbo v3, "&sigma;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c4

    const-string/jumbo v3, "&tau;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c5

    const-string/jumbo v3, "&upsilon;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c6

    const-string/jumbo v3, "&phi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c7

    const-string/jumbo v3, "&chi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c8

    const-string/jumbo v3, "&psi;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3c9

    const-string/jumbo v3, "&omega;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3d1

    const-string/jumbo v3, "&thetasym;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3d2

    const-string/jumbo v3, "&upsih;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x3d6

    const-string/jumbo v3, "&piv;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2002

    const-string/jumbo v3, "&ensp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2003

    const-string/jumbo v3, "&emsp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2009

    const-string/jumbo v3, "&thinsp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x200c

    const-string/jumbo v3, "&zwnj;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x200d

    const-string/jumbo v3, "&zwj;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x200e

    const-string/jumbo v3, "&lrm;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x200f

    const-string/jumbo v3, "&rlm;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2013

    const-string/jumbo v3, "&ndash;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2014

    const-string/jumbo v3, "&mdash;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2018

    const-string/jumbo v3, "&lsquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2019

    const-string/jumbo v3, "&rsquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x201a

    const-string/jumbo v3, "&sbquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x201c

    const-string/jumbo v3, "&ldquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x201d

    const-string/jumbo v3, "&rdquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x201e

    const-string/jumbo v3, "&bdquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2020

    const-string/jumbo v3, "&dagger;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2021

    const-string/jumbo v3, "&Dagger;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2022

    const-string/jumbo v3, "&bull;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2026

    const-string/jumbo v3, "&hellip;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2030

    const-string/jumbo v3, "&permil;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2032

    const-string/jumbo v3, "&prime;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2033

    const-string/jumbo v3, "&Prime;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2039

    const-string/jumbo v3, "&lsaquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x203a

    const-string/jumbo v3, "&rsaquo;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x203e

    const-string/jumbo v3, "&oline;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2044

    const-string/jumbo v3, "&frasl;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x20ac

    const-string/jumbo v3, "&euro;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2111

    const-string/jumbo v3, "&image;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2118

    const-string/jumbo v3, "&weierp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x211c

    const-string/jumbo v3, "&real;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2122

    const-string/jumbo v3, "&trade;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2135

    const-string/jumbo v3, "&alefsym;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2190

    const-string/jumbo v3, "&larr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2191

    const-string/jumbo v3, "&uarr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2192

    const-string/jumbo v3, "&rarr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2193

    const-string/jumbo v3, "&darr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2194

    const-string/jumbo v3, "&harr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x21b5

    const-string/jumbo v3, "&crarr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x21d0

    const-string/jumbo v3, "&lArr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x21d1

    const-string/jumbo v3, "&uArr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x21d2

    const-string/jumbo v3, "&rArr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x21d3

    const-string/jumbo v3, "&dArr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x21d4

    const-string/jumbo v3, "&hArr;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2200

    const-string/jumbo v3, "&forall;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2202

    const-string/jumbo v3, "&part;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2203

    const-string/jumbo v3, "&exist;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2205

    const-string/jumbo v3, "&empty;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2207

    const-string/jumbo v3, "&nabla;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2208

    const-string/jumbo v3, "&isin;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2209

    const-string/jumbo v3, "&notin;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x220b

    const-string/jumbo v3, "&ni;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x220f

    const-string/jumbo v3, "&prod;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2211

    const-string/jumbo v3, "&sum;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2212

    const-string/jumbo v3, "&minus;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2217

    const-string/jumbo v3, "&lowast;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x221a

    const-string/jumbo v3, "&radic;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x221d

    const-string/jumbo v3, "&prop;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x221e

    const-string/jumbo v3, "&infin;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2220

    const-string/jumbo v3, "&ang;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2227

    const-string/jumbo v3, "&and;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2228

    const-string/jumbo v3, "&or;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2229

    const-string/jumbo v3, "&cap;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x222a

    const-string/jumbo v3, "&cup;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x222b

    const-string/jumbo v3, "&int;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2234

    const-string/jumbo v3, "&there4;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x223c

    const-string/jumbo v3, "&sim;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2245

    const-string/jumbo v3, "&cong;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2248

    const-string/jumbo v3, "&asymp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2260

    const-string/jumbo v3, "&ne;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2261

    const-string/jumbo v3, "&equiv;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2264

    const-string/jumbo v3, "&le;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2265

    const-string/jumbo v3, "&ge;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2282

    const-string/jumbo v3, "&sub;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2283

    const-string/jumbo v3, "&sup;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2284

    const-string/jumbo v3, "&nsub;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2286

    const-string/jumbo v3, "&sube;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2287

    const-string/jumbo v3, "&supe;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2295

    const-string/jumbo v3, "&oplus;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2297

    const-string/jumbo v3, "&otimes;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x22a5

    const-string/jumbo v3, "&perp;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x22c5

    const-string/jumbo v3, "&sdot;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2308

    const-string/jumbo v3, "&lceil;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2309

    const-string/jumbo v3, "&rceil;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x230a

    const-string/jumbo v3, "&lfloor;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x230b

    const-string/jumbo v3, "&rfloor;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2329

    const-string/jumbo v3, "&lang;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x232a

    const-string/jumbo v3, "&rang;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x25ca

    const-string/jumbo v3, "&loz;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2660

    const-string/jumbo v3, "&spades;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2663

    const-string/jumbo v3, "&clubs;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2665

    const-string/jumbo v3, "&hearts;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    const/16 v2, 0x2666

    const-string/jumbo v3, "&diams;"

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->addEscape(CLjava/lang/String;)Lcom/google/gdata/util/common/base/CharEscaperBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gdata/util/common/base/CharEscaperBuilder;->toArray()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/util/common/base/CharEscapers$HtmlCharEscaper;-><init>([[C)V

    sput-object v0, Lcom/google/gdata/util/common/base/CharEscapers$HtmlEscaperHolder;->HTML_ESCAPER:Lcom/google/gdata/util/common/base/CharEscaper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/gdata/util/common/base/CharEscaper;
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/google/gdata/util/common/base/CharEscapers$HtmlEscaperHolder;->HTML_ESCAPER:Lcom/google/gdata/util/common/base/CharEscaper;

    return-object v0
.end method
