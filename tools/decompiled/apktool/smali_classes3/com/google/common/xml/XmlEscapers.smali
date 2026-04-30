.class public Lcom/google/common/xml/XmlEscapers;
.super Ljava/lang/Object;
.source "XmlEscapers.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final MAX_ASCII_CONTROL_CHAR:C = '\u001f'

.field private static final MIN_ASCII_CONTROL_CHAR:C

.field private static final XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

.field private static final XML_ESCAPER:Lcom/google/common/escape/Escaper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xa

    const/16 v3, 0x9

    const/4 v0, 0x0

    .line 115
    invoke-static {}, Lcom/google/common/escape/Escapers;->builder()Lcom/google/common/escape/Escapers$Builder;

    move-result-object v1

    .line 120
    const v2, 0xffff

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->setSafeRange(CC)Lcom/google/common/escape/Escapers$Builder;

    .line 122
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/google/common/escape/Escapers$Builder;->setUnsafeReplacement(Ljava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 129
    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    .line 130
    if-eq v0, v3, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    .line 131
    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0x26

    const-string/jumbo v2, "&amp;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 138
    const/16 v0, 0x3c

    const-string/jumbo v2, "&lt;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 139
    const/16 v0, 0x3e

    const-string/jumbo v2, "&gt;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 140
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 141
    const/16 v0, 0x27

    const-string/jumbo v2, "&apos;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 142
    const/16 v0, 0x22

    const-string/jumbo v2, "&quot;"

    invoke-virtual {v1, v0, v2}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 143
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 144
    const-string/jumbo v0, "&#x9;"

    invoke-virtual {v1, v3, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 145
    const-string/jumbo v0, "&#xA;"

    invoke-virtual {v1, v4, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 146
    const-string/jumbo v0, "&#xD;"

    invoke-virtual {v1, v5, v0}, Lcom/google/common/escape/Escapers$Builder;->addEscape(CLjava/lang/String;)Lcom/google/common/escape/Escapers$Builder;

    .line 147
    invoke-virtual {v1}, Lcom/google/common/escape/Escapers$Builder;->build()Lcom/google/common/escape/Escaper;

    move-result-object v0

    sput-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

    .line 148
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xmlAttributeEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->XML_ATTRIBUTE_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method

.method public static xmlContentEscaper()Lcom/google/common/escape/Escaper;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/google/common/xml/XmlEscapers;->XML_CONTENT_ESCAPER:Lcom/google/common/escape/Escaper;

    return-object v0
.end method
