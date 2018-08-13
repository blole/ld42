using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AnimationEvents : MonoBehaviour
{
    /// <summary>
    /// float: seconds to be active for
    /// int: ?
    /// string: name of GameObject with BulletSpawner component to activate
    /// object: ?
    /// </summary>
    public void activateSpawner(AnimationEvent e)
    {
        GameObject spawner_ = gameObject.FindObject(e.stringParameter);
        if (!spawner_)
        {
            Debug.LogError("no gameObject called "+e.stringParameter+" found");
            return;
        }
        BulletSpawner spawner = spawner_.GetComponent<BulletSpawner>();
        if (!spawner)
        {
            Debug.LogError(""+spawner_+" has no spawner script component");
            return;
        }

        spawner.activateForSeconds(e.floatParameter);
    }
}
