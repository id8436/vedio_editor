.class Lcom/google/android/gms/common/api/zzl$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field public final zzRf:I

.field public final zzRg:Lcom/google/android/gms/common/api/GoogleApiClient;

.field public final zzRh:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field final synthetic zzRi:Lcom/google/android/gms/common/api/zzl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/zzl;ILcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRi:Lcom/google/android/gms/common/api/zzl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRf:I

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRg:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p4, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRh:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    invoke-interface {p3, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRf:I

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRg:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/GoogleApiClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRi:Lcom/google/android/gms/common/api/zzl;

    invoke-static {v0}, Lcom/google/android/gms/common/api/zzl;->zzd(Lcom/google/android/gms/common/api/zzl;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/zzl$zzb;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRi:Lcom/google/android/gms/common/api/zzl;

    iget v3, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRf:I

    invoke-direct {v1, v2, v3, p1}, Lcom/google/android/gms/common/api/zzl$zzb;-><init>(Lcom/google/android/gms/common/api/zzl;ILcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzlh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRg:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzl$zza;->zzRg:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    return-void
.end method
