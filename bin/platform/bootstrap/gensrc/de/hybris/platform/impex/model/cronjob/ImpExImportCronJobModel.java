/*
 * ----------------------------------------------------------------
 * --- WARNING: THIS FILE IS GENERATED AND WILL BE OVERWRITTEN! ---
 * --- Generated at Dec 5, 2014 7:51:06 PM                      ---
 * ----------------------------------------------------------------
 *  
 * [y] hybris Platform
 *  
 * Copyright (c) 2000-2011 hybris AG
 * All rights reserved.
 *  
 * This software is the confidential and proprietary information of hybris
 * ("Confidential Information"). You shall not disclose such Confidential
 * Information and shall use it only in accordance with the terms of the
 * license agreement you entered into with hybris.
 *  
 */
package de.hybris.platform.impex.model.cronjob;

import de.hybris.platform.core.enums.EncodingEnum;
import de.hybris.platform.core.model.ItemModel;
import de.hybris.platform.core.model.media.MediaModel;
import de.hybris.platform.cronjob.model.CronJobModel;
import de.hybris.platform.cronjob.model.JobModel;
import de.hybris.platform.impex.enums.ImpExValidationModeEnum;
import de.hybris.platform.impex.model.ImpExMediaModel;
import de.hybris.platform.impex.model.cronjob.ImpExImportJobModel;
import de.hybris.platform.servicelayer.model.ItemModelContext;
import java.util.Collection;

/**
 * Generated model class for type ImpExImportCronJob first defined at extension impex.
 */
@SuppressWarnings("all")
public class ImpExImportCronJobModel extends CronJobModel
{
	/**<i>Generated model type code constant.</i>*/
	public final static String _TYPECODE = "ImpExImportCronJob";
	
	/**<i>Generated relation code constant for relation <code>JobCronJobRelation</code> defining source attribute <code>job</code> in extension <code>processing</code>.</i>*/
	public final static String _JOBCRONJOBRELATION = "JobCronJobRelation";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.dumpingAllowed</code> attribute defined at extension <code>impex</code>. */
	public static final String DUMPINGALLOWED = "dumpingAllowed";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.unresolvedDataStore</code> attribute defined at extension <code>impex</code>. */
	public static final String UNRESOLVEDDATASTORE = "unresolvedDataStore";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.valueCount</code> attribute defined at extension <code>impex</code>. */
	public static final String VALUECOUNT = "valueCount";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.enableCodeExecution</code> attribute defined at extension <code>impex</code>. */
	public static final String ENABLECODEEXECUTION = "enableCodeExecution";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.enableHmcSavedValues</code> attribute defined at extension <code>impex</code>. */
	public static final String ENABLEHMCSAVEDVALUES = "enableHmcSavedValues";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.unzipMediasMedia</code> attribute defined at extension <code>impex</code>. */
	public static final String UNZIPMEDIASMEDIA = "unzipMediasMedia";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.mode</code> attribute defined at extension <code>impex</code>. */
	public static final String MODE = "mode";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.enableExternalCodeExecution</code> attribute defined at extension <code>impex</code>. */
	public static final String ENABLEEXTERNALCODEEXECUTION = "enableExternalCodeExecution";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.enableExternalSyntaxParsing</code> attribute defined at extension <code>impex</code>. */
	public static final String ENABLEEXTERNALSYNTAXPARSING = "enableExternalSyntaxParsing";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.mediasTarget</code> attribute defined at extension <code>impex</code>. */
	public static final String MEDIASTARGET = "mediasTarget";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.locale</code> attribute defined at extension <code>impex</code>. */
	public static final String LOCALE = "locale";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.jobMedia</code> attribute defined at extension <code>impex</code>. */
	public static final String JOBMEDIA = "jobMedia";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.workMedia</code> attribute defined at extension <code>impex</code>. */
	public static final String WORKMEDIA = "workMedia";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.maxThreads</code> attribute defined at extension <code>impex</code>. */
	public static final String MAXTHREADS = "maxThreads";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.zipentry</code> attribute defined at extension <code>impex</code>. */
	public static final String ZIPENTRY = "zipentry";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.dumpFileEncoding</code> attribute defined at extension <code>impex</code>. */
	public static final String DUMPFILEENCODING = "dumpFileEncoding";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.legacyMode</code> attribute defined at extension <code>impex</code>. */
	public static final String LEGACYMODE = "legacyMode";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.externalDataCollection</code> attribute defined at extension <code>impex</code>. */
	public static final String EXTERNALDATACOLLECTION = "externalDataCollection";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.lastSuccessfulLine</code> attribute defined at extension <code>impex</code>. */
	public static final String LASTSUCCESSFULLINE = "lastSuccessfulLine";
	
	/** <i>Generated constant</i> - Attribute key of <code>ImpExImportCronJob.mediasMedia</code> attribute defined at extension <code>impex</code>. */
	public static final String MEDIASMEDIA = "mediasMedia";
	
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.dumpingAllowed</code> attribute defined at extension <code>impex</code>. */
	private Boolean _dumpingAllowed;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.unresolvedDataStore</code> attribute defined at extension <code>impex</code>. */
	private ImpExMediaModel _unresolvedDataStore;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.valueCount</code> attribute defined at extension <code>impex</code>. */
	private Integer _valueCount;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.enableCodeExecution</code> attribute defined at extension <code>impex</code>. */
	private Boolean _enableCodeExecution;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.enableHmcSavedValues</code> attribute defined at extension <code>impex</code>. */
	private Boolean _enableHmcSavedValues;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.unzipMediasMedia</code> attribute defined at extension <code>impex</code>. */
	private Boolean _unzipMediasMedia;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.mode</code> attribute defined at extension <code>impex</code>. */
	private ImpExValidationModeEnum _mode;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.enableExternalCodeExecution</code> attribute defined at extension <code>impex</code>. */
	private Boolean _enableExternalCodeExecution;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.enableExternalSyntaxParsing</code> attribute defined at extension <code>impex</code>. */
	private Boolean _enableExternalSyntaxParsing;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.mediasTarget</code> attribute defined at extension <code>impex</code>. */
	private String _mediasTarget;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.locale</code> attribute defined at extension <code>impex</code>. */
	private String _locale;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.jobMedia</code> attribute defined at extension <code>impex</code>. */
	private ImpExMediaModel _jobMedia;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.workMedia</code> attribute defined at extension <code>impex</code>. */
	private ImpExMediaModel _workMedia;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.maxThreads</code> attribute defined at extension <code>impex</code>. */
	private Integer _maxThreads;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.zipentry</code> attribute defined at extension <code>impex</code>. */
	private String _zipentry;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.dumpFileEncoding</code> attribute defined at extension <code>impex</code>. */
	private EncodingEnum _dumpFileEncoding;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.legacyMode</code> attribute defined at extension <code>impex</code>. */
	private Boolean _legacyMode;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.externalDataCollection</code> attribute defined at extension <code>impex</code>. */
	private Collection<ImpExMediaModel> _externalDataCollection;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.lastSuccessfulLine</code> attribute defined at extension <code>impex</code>. */
	private Integer _lastSuccessfulLine;
	
	/** <i>Generated variable</i> - Variable of <code>ImpExImportCronJob.mediasMedia</code> attribute defined at extension <code>impex</code>. */
	private MediaModel _mediasMedia;
	
	
	/**
	 * <i>Generated constructor</i> - Default constructor for generic creation.
	 */
	public ImpExImportCronJobModel()
	{
		super();
	}
	
	/**
	 * <i>Generated constructor</i> - Default constructor for creation with existing context
	 * @param ctx the model context to be injected, must not be null
	 */
	public ImpExImportCronJobModel(final ItemModelContext ctx)
	{
		super(ctx);
	}
	
	/**
	 * <i>Generated constructor</i> - Constructor with all mandatory attributes.
	 * @deprecated Since 4.1.1 Please use the default constructor without parameters
	 * @param _job initial attribute declared by type <code>ImpExImportCronJob</code> at extension <code>impex</code>
	 */
	@Deprecated
	public ImpExImportCronJobModel(final ImpExImportJobModel _job)
	{
		super();
		setJob(_job);
	}
	
	/**
	 * <i>Generated constructor</i> - for all mandatory and initial attributes.
	 * @deprecated Since 4.1.1 Please use the default constructor without parameters
	 * @param _job initial attribute declared by type <code>ImpExImportCronJob</code> at extension <code>impex</code>
	 * @param _owner initial attribute declared by type <code>Item</code> at extension <code>core</code>
	 */
	@Deprecated
	public ImpExImportCronJobModel(final ImpExImportJobModel _job, final ItemModel _owner)
	{
		super();
		setJob(_job);
		setOwner(_owner);
	}
	
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.dumpFileEncoding</code> attribute defined at extension <code>impex</code>. 
	 * @return the dumpFileEncoding
	 */
	public EncodingEnum getDumpFileEncoding()
	{
		if (this._dumpFileEncoding!=null)
		{
			return _dumpFileEncoding;
		}
		return _dumpFileEncoding = getPersistenceContext().getValue(DUMPFILEENCODING, _dumpFileEncoding);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.dumpingAllowed</code> attribute defined at extension <code>impex</code>. 
	 * @return the dumpingAllowed
	 */
	public Boolean getDumpingAllowed()
	{
		if (this._dumpingAllowed!=null)
		{
			return _dumpingAllowed;
		}
		return _dumpingAllowed = getPersistenceContext().getValue(DUMPINGALLOWED, _dumpingAllowed);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.enableCodeExecution</code> attribute defined at extension <code>impex</code>. 
	 * @return the enableCodeExecution
	 */
	public Boolean getEnableCodeExecution()
	{
		if (this._enableCodeExecution!=null)
		{
			return _enableCodeExecution;
		}
		return _enableCodeExecution = getPersistenceContext().getValue(ENABLECODEEXECUTION, _enableCodeExecution);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.enableExternalCodeExecution</code> attribute defined at extension <code>impex</code>. 
	 * @return the enableExternalCodeExecution
	 */
	public Boolean getEnableExternalCodeExecution()
	{
		if (this._enableExternalCodeExecution!=null)
		{
			return _enableExternalCodeExecution;
		}
		return _enableExternalCodeExecution = getPersistenceContext().getValue(ENABLEEXTERNALCODEEXECUTION, _enableExternalCodeExecution);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.enableExternalSyntaxParsing</code> attribute defined at extension <code>impex</code>. 
	 * @return the enableExternalSyntaxParsing
	 */
	public Boolean getEnableExternalSyntaxParsing()
	{
		if (this._enableExternalSyntaxParsing!=null)
		{
			return _enableExternalSyntaxParsing;
		}
		return _enableExternalSyntaxParsing = getPersistenceContext().getValue(ENABLEEXTERNALSYNTAXPARSING, _enableExternalSyntaxParsing);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.enableHmcSavedValues</code> attribute defined at extension <code>impex</code>. 
	 * @return the enableHmcSavedValues
	 */
	public Boolean getEnableHmcSavedValues()
	{
		if (this._enableHmcSavedValues!=null)
		{
			return _enableHmcSavedValues;
		}
		return _enableHmcSavedValues = getPersistenceContext().getValue(ENABLEHMCSAVEDVALUES, _enableHmcSavedValues);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.externalDataCollection</code> attribute defined at extension <code>impex</code>. 
	 * Consider using FlexibleSearchService::searchRelation for pagination support of large result sets.
	 * @return the externalDataCollection
	 */
	public Collection<ImpExMediaModel> getExternalDataCollection()
	{
		if (this._externalDataCollection!=null)
		{
			return _externalDataCollection;
		}
		return _externalDataCollection = getPersistenceContext().getValue(EXTERNALDATACOLLECTION, _externalDataCollection);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>CronJob.job</code> attribute defined at extension <code>processing</code> and redeclared at extension <code>impex</code>. 
	 * @return the job
	 */
	@Override
	public ImpExImportJobModel getJob()
	{
		return (ImpExImportJobModel) super.getJob();
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.jobMedia</code> attribute defined at extension <code>impex</code>. 
	 * @return the jobMedia
	 */
	public ImpExMediaModel getJobMedia()
	{
		if (this._jobMedia!=null)
		{
			return _jobMedia;
		}
		return _jobMedia = getPersistenceContext().getValue(JOBMEDIA, _jobMedia);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.lastSuccessfulLine</code> attribute defined at extension <code>impex</code>. 
	 * @return the lastSuccessfulLine
	 */
	public Integer getLastSuccessfulLine()
	{
		if (this._lastSuccessfulLine!=null)
		{
			return _lastSuccessfulLine;
		}
		return _lastSuccessfulLine = getPersistenceContext().getValue(LASTSUCCESSFULLINE, _lastSuccessfulLine);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.legacyMode</code> attribute defined at extension <code>impex</code>. 
	 * @return the legacyMode
	 */
	public Boolean getLegacyMode()
	{
		if (this._legacyMode!=null)
		{
			return _legacyMode;
		}
		return _legacyMode = getPersistenceContext().getValue(LEGACYMODE, _legacyMode);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.locale</code> attribute defined at extension <code>impex</code>. 
	 * @return the locale
	 */
	public String getLocale()
	{
		if (this._locale!=null)
		{
			return _locale;
		}
		return _locale = getPersistenceContext().getValue(LOCALE, _locale);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.maxThreads</code> attribute defined at extension <code>impex</code>. 
	 * @return the maxThreads
	 */
	public Integer getMaxThreads()
	{
		if (this._maxThreads!=null)
		{
			return _maxThreads;
		}
		return _maxThreads = getPersistenceContext().getValue(MAXTHREADS, _maxThreads);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.mediasMedia</code> attribute defined at extension <code>impex</code>. 
	 * @return the mediasMedia
	 */
	public MediaModel getMediasMedia()
	{
		if (this._mediasMedia!=null)
		{
			return _mediasMedia;
		}
		return _mediasMedia = getPersistenceContext().getValue(MEDIASMEDIA, _mediasMedia);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.mediasTarget</code> attribute defined at extension <code>impex</code>. 
	 * @return the mediasTarget
	 */
	public String getMediasTarget()
	{
		if (this._mediasTarget!=null)
		{
			return _mediasTarget;
		}
		return _mediasTarget = getPersistenceContext().getValue(MEDIASTARGET, _mediasTarget);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.mode</code> attribute defined at extension <code>impex</code>. 
	 * @return the mode
	 */
	public ImpExValidationModeEnum getMode()
	{
		if (this._mode!=null)
		{
			return _mode;
		}
		return _mode = getPersistenceContext().getValue(MODE, _mode);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.unresolvedDataStore</code> attribute defined at extension <code>impex</code>. 
	 * @return the unresolvedDataStore
	 */
	public ImpExMediaModel getUnresolvedDataStore()
	{
		if (this._unresolvedDataStore!=null)
		{
			return _unresolvedDataStore;
		}
		return _unresolvedDataStore = getPersistenceContext().getValue(UNRESOLVEDDATASTORE, _unresolvedDataStore);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.unzipMediasMedia</code> attribute defined at extension <code>impex</code>. 
	 * @return the unzipMediasMedia
	 */
	public Boolean getUnzipMediasMedia()
	{
		if (this._unzipMediasMedia!=null)
		{
			return _unzipMediasMedia;
		}
		return _unzipMediasMedia = getPersistenceContext().getValue(UNZIPMEDIASMEDIA, _unzipMediasMedia);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.valueCount</code> attribute defined at extension <code>impex</code>. 
	 * @return the valueCount
	 */
	public Integer getValueCount()
	{
		if (this._valueCount!=null)
		{
			return _valueCount;
		}
		return _valueCount = getPersistenceContext().getValue(VALUECOUNT, _valueCount);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.workMedia</code> attribute defined at extension <code>impex</code>. 
	 * @return the workMedia
	 */
	public ImpExMediaModel getWorkMedia()
	{
		if (this._workMedia!=null)
		{
			return _workMedia;
		}
		return _workMedia = getPersistenceContext().getValue(WORKMEDIA, _workMedia);
	}
	
	/**
	 * <i>Generated method</i> - Getter of the <code>ImpExImportCronJob.zipentry</code> attribute defined at extension <code>impex</code>. 
	 * @return the zipentry
	 */
	public String getZipentry()
	{
		if (this._zipentry!=null)
		{
			return _zipentry;
		}
		return _zipentry = getPersistenceContext().getValue(ZIPENTRY, _zipentry);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.dumpFileEncoding</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the dumpFileEncoding
	 */
	public void setDumpFileEncoding(final EncodingEnum value)
	{
		_dumpFileEncoding = getPersistenceContext().setValue(DUMPFILEENCODING, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.dumpingAllowed</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the dumpingAllowed
	 */
	public void setDumpingAllowed(final Boolean value)
	{
		_dumpingAllowed = getPersistenceContext().setValue(DUMPINGALLOWED, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.enableCodeExecution</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the enableCodeExecution
	 */
	public void setEnableCodeExecution(final Boolean value)
	{
		_enableCodeExecution = getPersistenceContext().setValue(ENABLECODEEXECUTION, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.enableExternalCodeExecution</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the enableExternalCodeExecution
	 */
	public void setEnableExternalCodeExecution(final Boolean value)
	{
		_enableExternalCodeExecution = getPersistenceContext().setValue(ENABLEEXTERNALCODEEXECUTION, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.enableExternalSyntaxParsing</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the enableExternalSyntaxParsing
	 */
	public void setEnableExternalSyntaxParsing(final Boolean value)
	{
		_enableExternalSyntaxParsing = getPersistenceContext().setValue(ENABLEEXTERNALSYNTAXPARSING, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.enableHmcSavedValues</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the enableHmcSavedValues
	 */
	public void setEnableHmcSavedValues(final Boolean value)
	{
		_enableHmcSavedValues = getPersistenceContext().setValue(ENABLEHMCSAVEDVALUES, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.externalDataCollection</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the externalDataCollection
	 */
	public void setExternalDataCollection(final Collection<ImpExMediaModel> value)
	{
		_externalDataCollection = getPersistenceContext().setValue(EXTERNALDATACOLLECTION, value);
	}
	
	/**
	 * <i>Generated method</i> - Initial setter of <code>CronJob.job</code> attribute defined at extension <code>processing</code> and redeclared at extension <code>impex</code>. Can only be used at creation of model - before first save. Will only accept values of type {@link de.hybris.platform.impex.model.cronjob.ImpExImportJobModel}.  
	 *  
	 * @param value the job
	 */
	@Override
	public void setJob(final JobModel value)
	{
		super.setJob(value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.jobMedia</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the jobMedia
	 */
	public void setJobMedia(final ImpExMediaModel value)
	{
		_jobMedia = getPersistenceContext().setValue(JOBMEDIA, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.lastSuccessfulLine</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the lastSuccessfulLine
	 */
	public void setLastSuccessfulLine(final Integer value)
	{
		_lastSuccessfulLine = getPersistenceContext().setValue(LASTSUCCESSFULLINE, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.legacyMode</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the legacyMode
	 */
	public void setLegacyMode(final Boolean value)
	{
		_legacyMode = getPersistenceContext().setValue(LEGACYMODE, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.locale</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the locale
	 */
	public void setLocale(final String value)
	{
		_locale = getPersistenceContext().setValue(LOCALE, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.maxThreads</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the maxThreads
	 */
	public void setMaxThreads(final Integer value)
	{
		_maxThreads = getPersistenceContext().setValue(MAXTHREADS, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.mediasMedia</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the mediasMedia
	 */
	public void setMediasMedia(final MediaModel value)
	{
		_mediasMedia = getPersistenceContext().setValue(MEDIASMEDIA, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.mediasTarget</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the mediasTarget
	 */
	public void setMediasTarget(final String value)
	{
		_mediasTarget = getPersistenceContext().setValue(MEDIASTARGET, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.mode</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the mode
	 */
	public void setMode(final ImpExValidationModeEnum value)
	{
		_mode = getPersistenceContext().setValue(MODE, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.unresolvedDataStore</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the unresolvedDataStore
	 */
	public void setUnresolvedDataStore(final ImpExMediaModel value)
	{
		_unresolvedDataStore = getPersistenceContext().setValue(UNRESOLVEDDATASTORE, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.unzipMediasMedia</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the unzipMediasMedia
	 */
	public void setUnzipMediasMedia(final Boolean value)
	{
		_unzipMediasMedia = getPersistenceContext().setValue(UNZIPMEDIASMEDIA, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.valueCount</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the valueCount
	 */
	public void setValueCount(final Integer value)
	{
		_valueCount = getPersistenceContext().setValue(VALUECOUNT, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.workMedia</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the workMedia
	 */
	public void setWorkMedia(final ImpExMediaModel value)
	{
		_workMedia = getPersistenceContext().setValue(WORKMEDIA, value);
	}
	
	/**
	 * <i>Generated method</i> - Setter of <code>ImpExImportCronJob.zipentry</code> attribute defined at extension <code>impex</code>. 
	 *  
	 * @param value the zipentry
	 */
	public void setZipentry(final String value)
	{
		_zipentry = getPersistenceContext().setValue(ZIPENTRY, value);
	}
	
}
