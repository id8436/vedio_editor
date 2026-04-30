.class public final Ld/m;
.super Ljava/lang/Object;
.source "CipherSuite.java"


# static fields
.field public static final A:Ld/m;

.field public static final B:Ld/m;

.field public static final C:Ld/m;

.field public static final D:Ld/m;

.field public static final E:Ld/m;

.field public static final F:Ld/m;

.field public static final G:Ld/m;

.field public static final H:Ld/m;

.field public static final I:Ld/m;

.field public static final J:Ld/m;

.field public static final K:Ld/m;

.field public static final L:Ld/m;

.field public static final M:Ld/m;

.field public static final N:Ld/m;

.field public static final O:Ld/m;

.field public static final P:Ld/m;

.field public static final Q:Ld/m;

.field public static final R:Ld/m;

.field public static final S:Ld/m;

.field public static final T:Ld/m;

.field public static final U:Ld/m;

.field public static final V:Ld/m;

.field public static final W:Ld/m;

.field public static final X:Ld/m;

.field public static final Y:Ld/m;

.field public static final Z:Ld/m;

.field static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final aA:Ld/m;

.field public static final aB:Ld/m;

.field public static final aC:Ld/m;

.field public static final aD:Ld/m;

.field public static final aE:Ld/m;

.field public static final aF:Ld/m;

.field public static final aG:Ld/m;

.field public static final aH:Ld/m;

.field public static final aI:Ld/m;

.field public static final aJ:Ld/m;

.field public static final aK:Ld/m;

.field public static final aL:Ld/m;

.field public static final aM:Ld/m;

.field public static final aN:Ld/m;

.field public static final aO:Ld/m;

.field public static final aP:Ld/m;

.field public static final aQ:Ld/m;

.field public static final aR:Ld/m;

.field public static final aS:Ld/m;

.field public static final aT:Ld/m;

.field public static final aU:Ld/m;

.field public static final aV:Ld/m;

.field public static final aW:Ld/m;

.field public static final aX:Ld/m;

.field public static final aY:Ld/m;

.field public static final aZ:Ld/m;

.field public static final aa:Ld/m;

.field public static final ab:Ld/m;

.field public static final ac:Ld/m;

.field public static final ad:Ld/m;

.field public static final ae:Ld/m;

.field public static final af:Ld/m;

.field public static final ag:Ld/m;

.field public static final ah:Ld/m;

.field public static final ai:Ld/m;

.field public static final aj:Ld/m;

.field public static final ak:Ld/m;

.field public static final al:Ld/m;

.field public static final am:Ld/m;

.field public static final an:Ld/m;

.field public static final ao:Ld/m;

.field public static final ap:Ld/m;

.field public static final aq:Ld/m;

.field public static final ar:Ld/m;

.field public static final as:Ld/m;

.field public static final at:Ld/m;

.field public static final au:Ld/m;

.field public static final av:Ld/m;

.field public static final aw:Ld/m;

.field public static final ax:Ld/m;

.field public static final ay:Ld/m;

.field public static final az:Ld/m;

.field public static final b:Ld/m;

.field public static final ba:Ld/m;

.field public static final bb:Ld/m;

.field public static final bc:Ld/m;

.field public static final bd:Ld/m;

.field public static final be:Ld/m;

.field public static final bf:Ld/m;

.field public static final bg:Ld/m;

.field public static final bh:Ld/m;

.field public static final bi:Ld/m;

.field private static final bk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ld/m;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ld/m;

.field public static final d:Ld/m;

.field public static final e:Ld/m;

.field public static final f:Ld/m;

.field public static final g:Ld/m;

.field public static final h:Ld/m;

.field public static final i:Ld/m;

.field public static final j:Ld/m;

.field public static final k:Ld/m;

.field public static final l:Ld/m;

.field public static final m:Ld/m;

.field public static final n:Ld/m;

.field public static final o:Ld/m;

.field public static final p:Ld/m;

.field public static final q:Ld/m;

.field public static final r:Ld/m;

.field public static final s:Ld/m;

.field public static final t:Ld/m;

.field public static final u:Ld/m;

.field public static final v:Ld/m;

.field public static final w:Ld/m;

.field public static final x:Ld/m;

.field public static final y:Ld/m;

.field public static final z:Ld/m;


# instance fields
.field final bj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ld/n;

    invoke-direct {v0}, Ld/n;-><init>()V

    sput-object v0, Ld/m;->a:Ljava/util/Comparator;

    .line 61
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ld/m;->a:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Ld/m;->bk:Ljava/util/Map;

    .line 66
    const-string/jumbo v0, "SSL_RSA_WITH_NULL_MD5"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->b:Ld/m;

    .line 67
    const-string/jumbo v0, "SSL_RSA_WITH_NULL_SHA"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->c:Ld/m;

    .line 68
    const-string/jumbo v0, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->d:Ld/m;

    .line 69
    const-string/jumbo v0, "SSL_RSA_WITH_RC4_128_MD5"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->e:Ld/m;

    .line 70
    const-string/jumbo v0, "SSL_RSA_WITH_RC4_128_SHA"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->f:Ld/m;

    .line 73
    const-string/jumbo v0, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->g:Ld/m;

    .line 74
    const-string/jumbo v0, "SSL_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->h:Ld/m;

    .line 75
    const-string/jumbo v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->i:Ld/m;

    .line 82
    const-string/jumbo v0, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x11

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->j:Ld/m;

    .line 83
    const-string/jumbo v0, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    const/16 v1, 0x12

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->k:Ld/m;

    .line 84
    const-string/jumbo v0, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x13

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->l:Ld/m;

    .line 85
    const-string/jumbo v0, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x14

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->m:Ld/m;

    .line 86
    const-string/jumbo v0, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    const/16 v1, 0x15

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->n:Ld/m;

    .line 87
    const-string/jumbo v0, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x16

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->o:Ld/m;

    .line 88
    const-string/jumbo v0, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x17

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->p:Ld/m;

    .line 89
    const-string/jumbo v0, "SSL_DH_anon_WITH_RC4_128_MD5"

    const/16 v1, 0x18

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->q:Ld/m;

    .line 90
    const-string/jumbo v0, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    const/16 v1, 0x19

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->r:Ld/m;

    .line 91
    const-string/jumbo v0, "SSL_DH_anon_WITH_DES_CBC_SHA"

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->s:Ld/m;

    .line 92
    const-string/jumbo v0, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->t:Ld/m;

    .line 93
    const-string/jumbo v0, "TLS_KRB5_WITH_DES_CBC_SHA"

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->u:Ld/m;

    .line 94
    const-string/jumbo v0, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->v:Ld/m;

    .line 95
    const-string/jumbo v0, "TLS_KRB5_WITH_RC4_128_SHA"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->w:Ld/m;

    .line 97
    const-string/jumbo v0, "TLS_KRB5_WITH_DES_CBC_MD5"

    const/16 v1, 0x22

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->x:Ld/m;

    .line 98
    const-string/jumbo v0, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    const/16 v1, 0x23

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->y:Ld/m;

    .line 99
    const-string/jumbo v0, "TLS_KRB5_WITH_RC4_128_MD5"

    const/16 v1, 0x24

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->z:Ld/m;

    .line 101
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    const/16 v1, 0x26

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->A:Ld/m;

    .line 103
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->B:Ld/m;

    .line 104
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    const/16 v1, 0x29

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->C:Ld/m;

    .line 106
    const-string/jumbo v0, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    const/16 v1, 0x2b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->D:Ld/m;

    .line 110
    const-string/jumbo v0, "TLS_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x2f

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->E:Ld/m;

    .line 113
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->F:Ld/m;

    .line 114
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x33

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->G:Ld/m;

    .line 115
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x34

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->H:Ld/m;

    .line 116
    const-string/jumbo v0, "TLS_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x35

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->I:Ld/m;

    .line 119
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x38

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->J:Ld/m;

    .line 120
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x39

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->K:Ld/m;

    .line 121
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x3a

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->L:Ld/m;

    .line 122
    const-string/jumbo v0, "TLS_RSA_WITH_NULL_SHA256"

    const/16 v1, 0x3b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->M:Ld/m;

    .line 123
    const-string/jumbo v0, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->N:Ld/m;

    .line 124
    const-string/jumbo v0, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x3d

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->O:Ld/m;

    .line 127
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->P:Ld/m;

    .line 128
    const-string/jumbo v0, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x41

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->Q:Ld/m;

    .line 131
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x44

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->R:Ld/m;

    .line 132
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    const/16 v1, 0x45

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->S:Ld/m;

    .line 134
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x67

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->T:Ld/m;

    .line 137
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->U:Ld/m;

    .line 138
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->V:Ld/m;

    .line 139
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    const/16 v1, 0x6c

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->W:Ld/m;

    .line 140
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    const/16 v1, 0x6d

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->X:Ld/m;

    .line 141
    const-string/jumbo v0, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x84

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->Y:Ld/m;

    .line 144
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x87

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->Z:Ld/m;

    .line 145
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    const/16 v1, 0x88

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aa:Ld/m;

    .line 147
    const-string/jumbo v0, "TLS_PSK_WITH_RC4_128_SHA"

    const/16 v1, 0x8a

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ab:Ld/m;

    .line 148
    const-string/jumbo v0, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    const/16 v1, 0x8b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ac:Ld/m;

    .line 149
    const-string/jumbo v0, "TLS_PSK_WITH_AES_128_CBC_SHA"

    const/16 v1, 0x8c

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ad:Ld/m;

    .line 150
    const-string/jumbo v0, "TLS_PSK_WITH_AES_256_CBC_SHA"

    const/16 v1, 0x8d

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ae:Ld/m;

    .line 159
    const-string/jumbo v0, "TLS_RSA_WITH_SEED_CBC_SHA"

    const/16 v1, 0x96

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->af:Ld/m;

    .line 165
    const-string/jumbo v0, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9c

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ag:Ld/m;

    .line 166
    const-string/jumbo v0, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9d

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ah:Ld/m;

    .line 167
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0x9e

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ai:Ld/m;

    .line 168
    const-string/jumbo v0, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0x9f

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aj:Ld/m;

    .line 171
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa2

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ak:Ld/m;

    .line 172
    const-string/jumbo v0, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa3

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->al:Ld/m;

    .line 175
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    const/16 v1, 0xa6

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->am:Ld/m;

    .line 176
    const-string/jumbo v0, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    const/16 v1, 0xa7

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->an:Ld/m;

    .line 207
    const-string/jumbo v0, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    const/16 v1, 0xff

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ao:Ld/m;

    .line 208
    const-string/jumbo v0, "TLS_FALLBACK_SCSV"

    const/16 v1, 0x5600

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ap:Ld/m;

    .line 209
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    const v1, 0xc001

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aq:Ld/m;

    .line 210
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc002

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ar:Ld/m;

    .line 211
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc003

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->as:Ld/m;

    .line 212
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc004

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->at:Ld/m;

    .line 213
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc005

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->au:Ld/m;

    .line 214
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    const v1, 0xc006

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->av:Ld/m;

    .line 215
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    const v1, 0xc007

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aw:Ld/m;

    .line 216
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc008

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ax:Ld/m;

    .line 217
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc009

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ay:Ld/m;

    .line 218
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00a

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->az:Ld/m;

    .line 219
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_NULL_SHA"

    const v1, 0xc00b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aA:Ld/m;

    .line 220
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    const v1, 0xc00c

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aB:Ld/m;

    .line 221
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc00d

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aC:Ld/m;

    .line 222
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc00e

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aD:Ld/m;

    .line 223
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc00f

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aE:Ld/m;

    .line 224
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    const v1, 0xc010

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aF:Ld/m;

    .line 225
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    const v1, 0xc011

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aG:Ld/m;

    .line 226
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc012

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aH:Ld/m;

    .line 227
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    const v1, 0xc013

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aI:Ld/m;

    .line 228
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    const v1, 0xc014

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aJ:Ld/m;

    .line 229
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_NULL_SHA"

    const v1, 0xc015

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aK:Ld/m;

    .line 230
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    const v1, 0xc016

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aL:Ld/m;

    .line 231
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    const v1, 0xc017

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aM:Ld/m;

    .line 232
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    const v1, 0xc018

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aN:Ld/m;

    .line 233
    const-string/jumbo v0, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    const v1, 0xc019

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aO:Ld/m;

    .line 243
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc023

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aP:Ld/m;

    .line 244
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc024

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aQ:Ld/m;

    .line 245
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc025

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aR:Ld/m;

    .line 246
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc026

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aS:Ld/m;

    .line 247
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc027

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aT:Ld/m;

    .line 248
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc028

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aU:Ld/m;

    .line 249
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    const v1, 0xc029

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aV:Ld/m;

    .line 250
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    const v1, 0xc02a

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aW:Ld/m;

    .line 251
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02b

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aX:Ld/m;

    .line 252
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02c

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aY:Ld/m;

    .line 253
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02d

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->aZ:Ld/m;

    .line 254
    const-string/jumbo v0, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc02e

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->ba:Ld/m;

    .line 255
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc02f

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bb:Ld/m;

    .line 256
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc030

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bc:Ld/m;

    .line 257
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    const v1, 0xc031

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bd:Ld/m;

    .line 258
    const-string/jumbo v0, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    const v1, 0xc032

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->be:Ld/m;

    .line 261
    const-string/jumbo v0, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    const v1, 0xc035

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bf:Ld/m;

    .line 262
    const-string/jumbo v0, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    const v1, 0xc036

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bg:Ld/m;

    .line 384
    const-string/jumbo v0, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca8

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bh:Ld/m;

    .line 385
    const-string/jumbo v0, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    const v1, 0xcca9

    invoke-static {v0, v1}, Ld/m;->a(Ljava/lang/String;I)Ld/m;

    move-result-object v0

    sput-object v0, Ld/m;->bi:Ld/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    if-nez p1, :cond_0

    .line 417
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 419
    :cond_0
    iput-object p1, p0, Ld/m;->bj:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Ld/m;
    .locals 3

    .prologue
    .line 399
    const-class v1, Ld/m;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ld/m;->bk:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld/m;

    .line 400
    if-nez v0, :cond_0

    .line 401
    new-instance v0, Ld/m;

    invoke-direct {v0, p0}, Ld/m;-><init>(Ljava/lang/String;)V

    .line 402
    sget-object v2, Ld/m;->bk:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    :cond_0
    monitor-exit v1

    return-object v0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;I)Ld/m;
    .locals 1

    .prologue
    .line 428
    invoke-static {p0}, Ld/m;->a(Ljava/lang/String;)Ld/m;

    move-result-object v0

    return-object v0
.end method

.method static varargs a([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ld/m;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 409
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 410
    invoke-static {v3}, Ld/m;->a(Ljava/lang/String;)Ld/m;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Ld/m;->bj:Ljava/lang/String;

    return-object v0
.end method
