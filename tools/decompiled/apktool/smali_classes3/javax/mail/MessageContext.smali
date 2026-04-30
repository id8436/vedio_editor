.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "MessageContext.java"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    .line 52
    return-void
.end method

.method private static getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 88
    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 89
    instance-of v2, v0, Ljavax/mail/Message;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, Ljavax/mail/Message;

    .line 97
    :goto_1
    return-object v0

    .line 91
    :cond_0
    check-cast v0, Ljavax/mail/BodyPart;

    .line 92
    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getParent()Ljavax/mail/Multipart;

    move-result-object v0

    .line 93
    if-nez v0, :cond_1

    move-object v0, v1

    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v0}, Ljavax/mail/Multipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 97
    goto :goto_1
.end method


# virtual methods
.method public getMessage()Ljavax/mail/Message;
    .locals 1

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    invoke-static {v0}, Ljavax/mail/MessageContext;->getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPart()Ljavax/mail/Part;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object v0
.end method

.method public getSession()Ljavax/mail/Session;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Ljavax/mail/MessageContext;->getMessage()Ljavax/mail/Message;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_0

    iget-object v0, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
