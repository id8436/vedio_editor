.class public Ljavax/mail/internet/AddressException;
.super Ljavax/mail/internet/ParseException;
.source "AddressException.java"


# static fields
.field private static final serialVersionUID:J = 0x7ec48f3eab5368f0L


# instance fields
.field protected pos:I

.field protected ref:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/mail/internet/ParseException;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 78
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0, p1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 88
    iput-object p2, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    .line 89
    iput p3, p0, Ljavax/mail/internet/AddressException;->pos:I

    .line 90
    return-void
.end method


# virtual methods
.method public getPos()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Ljavax/mail/internet/AddressException;->pos:I

    return v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-super {p0}, Ljavax/mail/internet/ParseException;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " in string ``"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/internet/AddressException;->ref:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\'\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I

    if-ltz v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ljavax/mail/internet/AddressException;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
