.class public final Ljavax/mail/internet/InternetHeaders$InternetHeader;
.super Ljavax/mail/Header;
.source "InternetHeaders.java"


# instance fields
.field line:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 97
    if-gez v0, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    .line 103
    :goto_0
    iput-object p1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 104
    return-void

    .line 101
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 110
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Ljavax/mail/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 122
    if-gez v0, :cond_0

    .line 123
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    .line 131
    :goto_0
    return-object v0

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 128
    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 131
    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
