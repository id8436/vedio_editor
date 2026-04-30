package com.behance.sdk.datamanager;

import com.behance.sdk.asynctask.listeners.IBehanceSDKGetCitiesAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetCountriesAsyncTaskListener;
import com.behance.sdk.asynctask.listeners.IBehanceSDKGetStatesOfCountryAsyncTaskListener;
import com.behance.sdk.asynctask.params.BehanceSDKAbstractTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetCitiesAsyncTaskParams;
import com.behance.sdk.asynctask.params.BehanceSDKGetStatesOfCountryAsyncTaskParams;
import com.behance.sdk.asynctasks.BehanceSDKGetCitiesAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetCountriesAsyncTask;
import com.behance.sdk.asynctasks.BehanceSDKGetStatesOfCountryAsyncTask;
import com.behance.sdk.dto.location.BehanceSDKCityDTO;
import com.behance.sdk.dto.location.BehanceSDKCountryDTO;
import com.behance.sdk.dto.location.BehanceSDKStateDTO;
import com.behance.sdk.listeners.IBehanceSDKLocationFiltersDataManagerListener;
import com.behance.sdk.managers.BehanceSDKEditProfileManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProfileLocationsDataManager implements IBehanceSDKGetCitiesAsyncTaskListener, IBehanceSDKGetCountriesAsyncTaskListener, IBehanceSDKGetStatesOfCountryAsyncTaskListener {
    private static BehanceSDKProfileLocationsDataManager instance;
    private String activeCountryId;
    private BehanceSDKGetCitiesAsyncTaskParams activeGetCitiesParams;
    private List<BehanceSDKCityDTO> citiesList;
    private String clientId;
    private BehanceSDKGetCitiesAsyncTask getCitiesAsyncTask;
    private boolean getCitiesAsyncTaskInProgress;
    private BehanceSDKGetCountriesAsyncTask getCountriesAsyncTask;
    private boolean getCountriesTaskInProgress;
    private BehanceSDKGetStatesOfCountryAsyncTask getStatesAsyncTask;
    private boolean getStatesAsyncTaskInProgress;
    private List<BehanceSDKCountryDTO> countriesList = new ArrayList();
    private List<BehanceSDKStateDTO> statesList = new ArrayList();
    private CopyOnWriteArraySet<IBehanceSDKLocationFiltersDataManagerListener> listenersSet = new CopyOnWriteArraySet<>();

    private BehanceSDKProfileLocationsDataManager() {
        setCredentials();
    }

    private void setCredentials() {
        this.clientId = BehanceSDKEditProfileManager.getInstance().getUserCredentials().getClientId();
    }

    public static BehanceSDKProfileLocationsDataManager getInstance() {
        if (instance == null) {
            instance = new BehanceSDKProfileLocationsDataManager();
        }
        return instance;
    }

    public void loadCountries() {
        if (this.countriesList == null || this.countriesList.isEmpty()) {
            loadCountriesFromServer();
        } else {
            notifyListenersOnGetCountriesSuccess();
        }
    }

    private void loadCountriesFromServer() {
        if (this.getCountriesAsyncTask == null) {
            setGetCountriesTaskInProgress(true);
            this.getCountriesAsyncTask = new BehanceSDKGetCountriesAsyncTask(this);
            BehanceSDKAbstractTaskParams behanceSDKAbstractTaskParams = new BehanceSDKAbstractTaskParams();
            if (this.clientId == null) {
                setCredentials();
            }
            behanceSDKAbstractTaskParams.setClientId(this.clientId);
            this.getCountriesAsyncTask.execute(behanceSDKAbstractTaskParams);
        }
    }

    private void notifyListenersOnGetCountriesSuccess() {
        if (!this.listenersSet.isEmpty()) {
            Iterator<IBehanceSDKLocationFiltersDataManagerListener> it = this.listenersSet.iterator();
            while (it.hasNext()) {
                it.next().onCountriesLoadingSuccess(this.countriesList);
            }
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetCountriesAsyncTaskListener
    public void onGetCountriesSuccess(List<BehanceSDKCountryDTO> list) {
        this.countriesList.clear();
        this.countriesList.addAll(list);
        notifyListenersOnGetCountriesSuccess();
        this.getCountriesAsyncTask = null;
        setGetCountriesTaskInProgress(false);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetCountriesAsyncTaskListener
    public void onGetCountriesFailure(Exception exc) {
        if (!this.listenersSet.isEmpty()) {
            Iterator<IBehanceSDKLocationFiltersDataManagerListener> it = this.listenersSet.iterator();
            while (it.hasNext()) {
                it.next().onCountriesLoadingFailure(exc);
            }
        }
        this.getCountriesAsyncTask = null;
        setGetCountriesTaskInProgress(false);
    }

    public void addListener(IBehanceSDKLocationFiltersDataManagerListener iBehanceSDKLocationFiltersDataManagerListener) {
        if (iBehanceSDKLocationFiltersDataManagerListener != null && !this.listenersSet.contains(iBehanceSDKLocationFiltersDataManagerListener)) {
            this.listenersSet.add(iBehanceSDKLocationFiltersDataManagerListener);
        }
    }

    public void removeListener(IBehanceSDKLocationFiltersDataManagerListener iBehanceSDKLocationFiltersDataManagerListener) {
        if (iBehanceSDKLocationFiltersDataManagerListener != null) {
            this.listenersSet.remove(iBehanceSDKLocationFiltersDataManagerListener);
        }
    }

    public boolean isGetCountriesTaskInProgress() {
        return this.getCountriesTaskInProgress;
    }

    private void setGetCountriesTaskInProgress(boolean z) {
        this.getCountriesTaskInProgress = z;
    }

    public boolean isGetStatesAsyncTaskInProgress() {
        return this.getStatesAsyncTaskInProgress;
    }

    private void setGetStatesAsyncTaskInProgress(boolean z) {
        this.getStatesAsyncTaskInProgress = z;
    }

    public void loadStates(String str) {
        if (this.activeCountryId != null && this.activeCountryId.equals(str) && this.statesList != null) {
            notifyListenersOnGetStatesSuccess(this.activeCountryId, this.statesList);
        } else {
            this.activeCountryId = str;
            loadStatesFromServer(str);
        }
    }

    private void loadStatesFromServer(String str) {
        if (!isGetStatesAsyncTaskInProgress() && this.getStatesAsyncTask == null) {
            setGetStatesAsyncTaskInProgress(true);
            this.getStatesAsyncTask = new BehanceSDKGetStatesOfCountryAsyncTask(this);
            BehanceSDKGetStatesOfCountryAsyncTaskParams behanceSDKGetStatesOfCountryAsyncTaskParams = new BehanceSDKGetStatesOfCountryAsyncTaskParams();
            behanceSDKGetStatesOfCountryAsyncTaskParams.setCountryId(str);
            if (this.clientId == null) {
                setCredentials();
            }
            behanceSDKGetStatesOfCountryAsyncTaskParams.setClientId(this.clientId);
            this.getStatesAsyncTask.execute(behanceSDKGetStatesOfCountryAsyncTaskParams);
        }
    }

    private void notifyListenersOnGetStatesSuccess(String str, List<BehanceSDKStateDTO> list) {
        if (!this.listenersSet.isEmpty()) {
            Iterator<IBehanceSDKLocationFiltersDataManagerListener> it = this.listenersSet.iterator();
            while (it.hasNext()) {
                it.next().onStatesLoadingSuccess(str, list);
            }
        }
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetStatesOfCountryAsyncTaskListener
    public void onGetStatesSuccess(String str, List<BehanceSDKStateDTO> list) {
        this.statesList.clear();
        this.statesList.addAll(list);
        notifyListenersOnGetStatesSuccess(str, list);
        this.getStatesAsyncTask = null;
        setGetStatesAsyncTaskInProgress(false);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetStatesOfCountryAsyncTaskListener
    public void onGetStatesFailure(String str, Exception exc) {
        if (!this.listenersSet.isEmpty()) {
            Iterator<IBehanceSDKLocationFiltersDataManagerListener> it = this.listenersSet.iterator();
            while (it.hasNext()) {
                it.next().onStatesLoadingFailure(str, exc);
            }
        }
        this.getStatesAsyncTask = null;
        setGetStatesAsyncTaskInProgress(false);
    }

    public boolean isGetCitiesAsyncTaskInProgress() {
        return this.getCitiesAsyncTaskInProgress;
    }

    private void setGetCitiesAsyncTaskInProgress(boolean z) {
        this.getCitiesAsyncTaskInProgress = z;
    }

    public void searchForCities(String str, String str2, String str3) {
        BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams = new BehanceSDKGetCitiesAsyncTaskParams();
        behanceSDKGetCitiesAsyncTaskParams.setCountryId(str);
        behanceSDKGetCitiesAsyncTaskParams.setStateId(str2);
        behanceSDKGetCitiesAsyncTaskParams.setCitySearchStr(str3);
        if (this.citiesList != null && this.activeGetCitiesParams != null && this.activeGetCitiesParams.equals(behanceSDKGetCitiesAsyncTaskParams)) {
            notifyOnGetCitiesSuccessListeners(this.activeGetCitiesParams, this.citiesList);
        } else {
            searchCitiesOnServer(behanceSDKGetCitiesAsyncTaskParams);
        }
    }

    private void searchCitiesOnServer(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams) {
        this.activeGetCitiesParams = behanceSDKGetCitiesAsyncTaskParams;
        setGetCitiesAsyncTaskInProgress(true);
        if (this.getCitiesAsyncTask != null) {
            this.getCitiesAsyncTask.cancel(true);
            this.getCitiesAsyncTask = null;
        }
        if (this.clientId == null) {
            setCredentials();
        }
        behanceSDKGetCitiesAsyncTaskParams.setClientId(this.clientId);
        this.getCitiesAsyncTask = new BehanceSDKGetCitiesAsyncTask(this);
        this.getCitiesAsyncTask.execute(behanceSDKGetCitiesAsyncTaskParams);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetCitiesAsyncTaskListener
    public void onGetCitiesSuccess(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, List<BehanceSDKCityDTO> list) {
        if (behanceSDKGetCitiesAsyncTaskParams.equals(this.activeGetCitiesParams)) {
            notifyOnGetCitiesSuccessListeners(behanceSDKGetCitiesAsyncTaskParams, list);
        }
    }

    private void notifyOnGetCitiesSuccessListeners(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, List<BehanceSDKCityDTO> list) {
        if (!this.listenersSet.isEmpty()) {
            Iterator<IBehanceSDKLocationFiltersDataManagerListener> it = this.listenersSet.iterator();
            while (it.hasNext()) {
                it.next().onCitiesLoadingSuccess(behanceSDKGetCitiesAsyncTaskParams, list);
            }
        }
        this.getCitiesAsyncTask = null;
        setGetCitiesAsyncTaskInProgress(false);
    }

    @Override // com.behance.sdk.asynctask.listeners.IBehanceSDKGetCitiesAsyncTaskListener
    public void onGetCitiesFailure(BehanceSDKGetCitiesAsyncTaskParams behanceSDKGetCitiesAsyncTaskParams, Exception exc) {
        if (!this.listenersSet.isEmpty()) {
            Iterator<IBehanceSDKLocationFiltersDataManagerListener> it = this.listenersSet.iterator();
            while (it.hasNext()) {
                it.next().onCitiesLoadingFailure(behanceSDKGetCitiesAsyncTaskParams, exc);
            }
        }
        this.getCitiesAsyncTask = null;
        setGetCitiesAsyncTaskInProgress(false);
    }
}
