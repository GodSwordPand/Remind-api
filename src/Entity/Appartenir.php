<?php

namespace App\Entity;

use ApiPlatform\Core\Annotation\ApiResource;
use Doctrine\ORM\Mapping as ORM;

/**
 * Appartenir
 *
 * @ORM\Table(name="APPARTENIR", indexes={@ORM\Index(name="I_FK_APPARTENIR_PROFILE", columns={"ID_PROFILE"}), @ORM\Index(name="I_FK_APPARTENIR_ROLE", columns={"ID_ROLE"}), @ORM\Index(name="I_FK_APPARTENIR_USER", columns={"ID_USER"})})
 * @ORM\Entity
 *
 * @ApiResource
 */
class Appartenir
{
    /**
     * @var \Role
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="Role")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ID_ROLE", referencedColumnName="ID_ROLE")
     * })
     */
    private $idRole;

    /**
     * @var \User
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ID_USER", referencedColumnName="ID_USER")
     * })
     */
    private $idUser;

    /**
     * @var \Profile
     *
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="NONE")
     * @ORM\OneToOne(targetEntity="Profile")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ID_PROFILE", referencedColumnName="ID_PROFILE")
     * })
     */
    private $idProfile;

    public function getIdRole(): ?Role
    {
        return $this->idRole;
    }

    public function setIdRole(?Role $idRole): self
    {
        $this->idRole = $idRole;

        return $this;
    }

    public function getIdUser(): ?User
    {
        return $this->idUser;
    }

    public function setIdUser(?User $idUser): self
    {
        $this->idUser = $idUser;

        return $this;
    }

    public function getIdProfile(): ?Profile
    {
        return $this->idProfile;
    }

    public function setIdProfile(?Profile $idProfile): self
    {
        $this->idProfile = $idProfile;

        return $this;
    }


}
