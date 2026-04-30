.class Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomProvider;
.super Ljava/security/Provider;
.source "FixedSecureRandom.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 72
    const-string/jumbo v0, "LinuxPRNG"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v1, "A Linux-specific random number provider that uses /dev/urandom"

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 80
    const-string/jumbo v0, "SecureRandom.SHA1PRNG"

    const-class v1, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomSpi;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v0, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string/jumbo v1, "Software"

    invoke-virtual {p0, v0, v1}, Lcom/dropbox/core/android/FixedSecureRandom$LinuxPrngSecureRandomProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method
