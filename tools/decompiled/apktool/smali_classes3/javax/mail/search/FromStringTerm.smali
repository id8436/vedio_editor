.class public final Ljavax/mail/search/FromStringTerm;
.super Ljavax/mail/search/AddressStringTerm;
.source "FromStringTerm.java"


# static fields
.field private static final serialVersionUID:J = 0x5081bebf4a6fab34L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljavax/mail/search/AddressStringTerm;-><init>(Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 87
    instance-of v0, p1, Ljavax/mail/search/FromStringTerm;

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljavax/mail/search/AddressStringTerm;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public match(Ljavax/mail/Message;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFrom()[Ljavax/mail/Address;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 74
    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 77
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 78
    aget-object v3, v2, v0

    invoke-super {p0, v3}, Ljavax/mail/search/AddressStringTerm;->match(Ljavax/mail/Address;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const/4 v1, 0x1

    goto :goto_0

    .line 77
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 70
    :catch_0
    move-exception v0

    goto :goto_0
.end method
